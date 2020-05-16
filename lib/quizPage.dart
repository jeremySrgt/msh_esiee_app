import 'package:flutter/material.dart';
import 'question.dart';
import 'result.dart';
import 'package:provider/provider.dart';
import 'storeResult.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class QuizPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizPageState();
  }
}

class _QuizPageState extends State<QuizPage> {
  List<Question> question = QuestionData().getQuestion();
  int actualQuestion = 0;

  SwiperController _controller = new SwiperController();

  Color gradientHome1 = Color(0xff82ccdd);
  Color gradientHome2 = Color(0xff0c2461);

  Color _currentBGColor1 = Color(0xff82ccdd);
  Color _currentBGColor2 = Color(0xff0c2461);

  @override
  Widget build(BuildContext context) {
    var result = Provider.of<StoreResult>(context);

    return Scaffold(
      body: Container(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInCubic,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [_currentBGColor1, _currentBGColor2])),
//        color: Theme.of(context).primaryColor,
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        IconButton(
                          icon: new Icon(Icons.arrow_back_ios,
                              color: Colors.white),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        Text(
                          "Quiz de filières",
                          style: TextStyle(fontSize: 25.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: quiz(result)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget sliderCard(result, index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            questionContainer(index),
            yesNoButton(result, index),
          ],
        ),
      ),
    );
  }

  Widget questionContainer(index) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image(
                image: AssetImage(question[index].image),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 45.0, 10.0, 0.0),
              child: Text(
                question[index].question,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget yesNoButton(result, index) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton(
            child: Text("NON 👎"),
            onPressed: () {
              if (actualQuestion == question.length - 1) {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Result()));
              } else {
                _controller.previous();
                setState(() {
                  actualQuestion++;
                });
              }
            },
          ),
          FlatButton(
            child: Text("OUI 👍"),
            onPressed: () {
              if (actualQuestion == question.length - 1) {
                result.addPoint(question[index].filliere);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Result()));
              } else {
                _controller.previous();
                result.addPoint(question[index].filliere);
                setState(() {
                  actualQuestion++;
                });
              }
            },
          )
        ],
      ),
    );
  }

  Widget quiz(result) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return sliderCard(result, index);
      },
      itemCount: question.length,
      itemWidth: 400.0,
      itemHeight: 600.0,
      layout: SwiperLayout.TINDER,
      controller: _controller,
    );
  }
}

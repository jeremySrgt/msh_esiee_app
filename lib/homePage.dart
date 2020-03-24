import 'package:flutter/material.dart';
import 'question.dart';
import 'result.dart';
import 'package:provider/provider.dart';
import 'storeResult.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<Question> question = QuestionData().getQuestion();
  int actualQuestion = 0;

  @override
  Widget build(BuildContext context) {
    var result = Provider.of<StoreResult>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Esiee"),
      ),

      body: Container(
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return sliderCard();
          },
          itemCount: 10,
          itemWidth: 400.0,
          itemHeight: 600.0,
          layout: SwiperLayout.TINDER,
        ),
      ),

//      body: Align(
//        alignment: Alignment.center,
//        child: Container(
//          child: Column(
//            mainAxisSize: MainAxisSize.min,
//            children: <Widget>[
//              Text(question[actualQuestion].question),
//              FlatButton(
//                child: Text('OUI'),
//                onPressed: () {
//                  if (actualQuestion == question.length - 1) {
//                    result.addPoint(question[actualQuestion].filliere);
//                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Result()));
//                  } else {
//                    result.addPoint(question[actualQuestion].filliere);
//                    setState(() {
//                      actualQuestion++;
//                    });
//                  }
//                },
//              ),
//
//              FlatButton(
//                child: Text('NON'),
//                onPressed: () {
//                  if (actualQuestion == question.length - 1) {
//                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Result()));
//                  } else {
//                    setState(() {
//                      actualQuestion++;
//                    });
//                  }
//                },
//              ),
//            ],
//          ),
//        ),
//      ),
    );
  }

  Widget sliderCard() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: Container(
        color: Colors.red,
        child: Column(
          children: <Widget>[
            questionContainer(),
            yesNoButton(),
          ],
        ),
      ),
    );
  }



  Widget questionContainer(){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text("Tu kiff la data science ? Tu kiff la data science ? Tu kiff la data science ? Tu kiff la data science ? ", style: TextStyle(fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }



  Widget yesNoButton(){
    return Container(
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton(
            child: Text("NON"),
            onPressed: (){},
          ),
          FlatButton(
            child: Text("OUI"),
            onPressed: (){},
          )
        ],
      ),
    );
  }


}

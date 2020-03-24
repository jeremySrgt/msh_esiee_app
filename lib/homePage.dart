import 'package:flutter/material.dart';
import 'question.dart';
import 'result.dart';
import 'package:provider/provider.dart';
import 'storeResult.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<Question> question = QuestionData().getQuestion();
  int actualQuestion = 0;

  SwiperController _controller = new SwiperController();

  int _selectedIndex = 0;

//  final Shader linearGradient = LinearGradient(
//    colors: <Color>[Colors.pink, Colors.deepPurple],
//  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  Color gradientHome1 = Color(0xff82ccdd);
  Color gradientHome2 = Color(0xff0c2461);

  Color gradientDiscover1 = Color(0xfff6b93b);
  Color gradientDiscover2 = Color(0xffeb2f06);

  Color _currentBGColor1 = Color(0xff82ccdd);
  Color _currentBGColor2 = Color(0xff0c2461);

  @override
  Widget build(BuildContext context) {
    var result = Provider.of<StoreResult>(context);
    List<Widget> contentList = [quiz(result), discover()];

    return Scaffold(
//      appBar: AppBar(
//        title: Text("Quiz Esiee"),
//        elevation: 0.0,
//      ),
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
                    child: Text(
                      "Esiee Quiz",
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: contentList[_selectedIndex],
                ),
                navigation(),
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
                image: AssetImage('./assets/images/dataimage.png'),
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

  Widget navigation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 22),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(65.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 7.0),
          child: GNav(
            gap: 8,
            activeColor: Colors.white,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            duration: Duration(milliseconds: 800),
            tabBackgroundColor: _currentBGColor1,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.assignment,
                text: 'Découvrir',
              ),
              GButton(
                icon: Icons.search,
                text: 'recherche',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              if(index == 0){
                setState(() {
                  _currentBGColor1 = gradientHome1;
                  _currentBGColor2 = gradientHome2;
                  _selectedIndex = index;
                });
              }
              if(index == 1){
                setState(() {
                  _currentBGColor1 = gradientDiscover1;
                  _currentBGColor2 = gradientDiscover2;
                  _selectedIndex = index;
                });
              }
            },
          ),
        ),
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

  Widget discover() {
    return Center(
      child: Text('section decouviri'),
    );
  }
}

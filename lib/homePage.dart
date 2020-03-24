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

  @override
  Widget build(BuildContext context) {
    var result = Provider.of<StoreResult>(context);
    

    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Esiee"),
        elevation: 0.0,
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[
            Swiper(
              itemBuilder: (BuildContext context, int index) {
                return sliderCard(result, index);
              },
              itemCount: question.length,
              itemWidth: 400.0,
              itemHeight: 600.0,
              layout: SwiperLayout.TINDER,
              controller: _controller,
            ),
            GNav(
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Colors.grey[800],
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.favorite_border,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.verified_user,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                }),
          ],
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
}

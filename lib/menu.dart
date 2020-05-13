import 'package:flutter/material.dart';
import 'homePage.dart';
import 'discover.dart';

class Menu extends StatelessWidget {
  Color _currentBGColor1 = Color(0xff82ccdd);
  Color _currentBGColor2 = Color(0xff0c2461);

  @override
  Widget build(BuildContext context) {
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
                    child: Text(
                      "Esiee Quiz",
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(
                        child: Text('Jouer !'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HomePage()));
                        },
                      ),
                      FlatButton(
                        child: Text('Découvre les fillières'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      DiscoverPage()));
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'quizPage.dart';
import 'discover.dart';
import 'package:url_launcher/url_launcher.dart';

class Menu extends StatelessWidget {
  Color _currentBGColor1 = Color(0xff82ccdd);
  Color _currentBGColor2 = Color(0xff0c2461);

  //TODO S'AMUSER AVEC LES NOUVELLES ANIMATIONS DE FLUTTER NOTAMMENT AVEC LES TRANSITIONS DE PAGES

  _launchURL() async {
    var url = "https://www.esiee.fr/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Non disponible $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var platform = Theme.of(context).platform;

    return Scaffold(
      body: Container(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [_currentBGColor1, _currentBGColor2])),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: platform == TargetPlatform.android
                          ? Image.asset(
                              "assets/images/Logo_ESIEE.png",
                              scale: 5.8,
                            )
                          : Image.asset(
                              "assets/images/Logo_ESIEE.png",
                              scale: 5.8,
                            )),
                ),
                Container(
                  child: Image.asset(
                    "assets/images/front_logo.png",
                    scale: 3.5,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                      "Trop de fillieres et tu ne sais pas laquelle te conviendrait ? le Quiz Esiee est fait pour toi ! Joues et découvre ta fillière de prédilection",
                      style: TextStyle(fontSize: 17.0, color: Colors.white),
                      textAlign: TextAlign.justify),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonTheme(
                        height: 40,
                        minWidth: 300,
                        child: RaisedButton(
                          child: Text(
                            'Jouer',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w100),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        QuizPage()));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ButtonTheme(
                        height: 40,
                        minWidth: 300,
                        child: RaisedButton(
                          child: Text(
                            'Découvrir les fillières',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w100),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DiscoverPage()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                FlatButton(
                    child: Text(
                      "Visite le site de ESIEE Paris",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: _launchURL),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

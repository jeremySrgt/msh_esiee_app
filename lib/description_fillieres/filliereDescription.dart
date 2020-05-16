import 'package:flutter/material.dart';
import 'package:msh_esiee_app/description_fillieres/FilliereClass.dart';
import 'package:url_launcher/url_launcher.dart';

class FilliereDescription extends StatelessWidget {
  final FilliereClass filiere;

  FilliereDescription({this.filiere});

  Color _currentBGColor1 = Color(0xff3fa3ba);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(filiere.titre),
        backgroundColor: _currentBGColor1,
      ),
      body: Container(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: [
            Expanded(
                child: Container(
                  constraints: BoxConstraints(minWidth: 100, maxWidth: 500),
                  child: Text(
              filiere.description,
              style: TextStyle(fontSize: 17.0),
              textAlign: TextAlign.justify,
            ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'En apprendre plus',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
                FlatButton(
                  child: Icon(Icons.arrow_forward, color: Colors.black),
                  onPressed: () {
                      var url = filiere.link;
                      launch(url);
                    }
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

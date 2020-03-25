import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'storeResult.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var result = Provider.of<StoreResult>(context);

    Color gradientHome1 = Color(0xff82ccdd);
    Color gradientHome2 = Color(0xff78e08f);

    Widget textResult() {
      String filliereResult = '';

      switch (result.getResult()) {
        case 'CYB':
          {
            filliereResult = 'Cyber sécurité';
          }
          break;
        case 'DSIA':
          {
            filliereResult = 'Data Science et IA';
          }
          break;
        case 'INFO':
          {
            filliereResult = 'Informatique';
          }
          break;
        case 'SE':
          {
            filliereResult = 'Systèmes embarqués';
          }
          break;
        case 'SEI':
          {
            filliereResult = 'Système electroniques intélligents';
          }
          break;
        case 'ENE':
          {
            filliereResult = 'Energie';
          }
          break;
        case 'GI':
          {
            filliereResult = 'Génie industriel';
          }
          break;
        case 'BIO':
          {
            filliereResult = 'Bio-technologies et E-santé';
          }
          break;
        default:
          {
            filliereResult = 'Toutes les fillière te correspondent 😁';
          }
          break;
      }

      return Text(
        filliereResult,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
      );
    }

    Widget description() {
      return Container(
        padding: EdgeInsets.fromLTRB(15.0, 20.0, 10.0, 10.0),
        child: Text(
            'Description Description Description Description Description Description Description Description Description Description Description Description Description Description Description Description Description Description Description Description Description Description Description'),
      );
    }

    Widget enApprendrePlus() {
      return Container(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'En apprendre plus',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
            FlatButton(
              child: Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [gradientHome1, gradientHome2],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Résultat",
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      image:
                          AssetImage('./assets/images/facebookalgorithm.jpg'),
                      fit: BoxFit.contain,
                    )),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    textResult(),
                    description(),
                    enApprendrePlus(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                    child: Text("Recommencer",style: TextStyle(color: gradientHome1, fontWeight: FontWeight.bold),),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    color: Colors.white,
                    onPressed: () {
                      result.resetQuizPoint();
                      Navigator.pushReplacementNamed(context, '/');
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

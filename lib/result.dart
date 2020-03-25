import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'storeResult.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var result = Provider.of<StoreResult>(context);

    Color gradientHome1 = Color(0xff82ccdd);
    Color gradientHome2 = Color(0xff78e08f);

    List<String> processResult() {
      List<String> listresult = new List(2);

      switch (result.getResult()) {
        case 'CYB':
          {
            listresult[0] = 'Cyber sécurité';
            listresult[1] = './assets/images/cyber.jpg';
          }
          break;
        case 'DSIA':
          {
            listresult[0] = 'Data Science et IA';
            listresult[1] = './assets/images/datascience.jpg';
          }
          break;
        case 'INFO':
          {
            listresult[0] = 'Informatique';
            listresult[1] = './assets/images/INFO.jpg';
          }
          break;
        case 'SE':
          {
            listresult[0] = 'Systèmes embarqués';
            listresult[1] = './assets/images/SE.jpg';
          }
          break;
        case 'SEI':
          {
            listresult[0] = 'Système electroniques intélligents';
            listresult[1] = './assets/images/SEI.jpg';
          }
          break;
        case 'ENE':
          {
            listresult[0] = 'Energie';
            listresult[1] = './assets/images/ENE.jpg';
          }
          break;
        case 'GI':
          {
            listresult[0] = 'Génie industriel';
            listresult[1] = './assets/images/GI.jpg';
          }
          break;
        case 'BIO':
          {
            listresult[0] = 'Bio-technologies et E-santé';
            listresult[1] = './assets/images/BIO.jpg';
          }
          break;
        default:
          {
            listresult[0] = 'Toutes les fillière te correspondent 😁';
          }
          break;
      }

      return listresult;
    }

    Widget textResult(){
      String filliereResult = processResult()[0];
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
                          AssetImage(processResult()[1]),
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

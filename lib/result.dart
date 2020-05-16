import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'storeResult.dart';
import 'description_fillieres/FilliereClass.dart';

class Result extends StatelessWidget {

  final FilliereClass filiere = new FilliereClass();

  @override
  Widget build(BuildContext context) {
    var result = Provider.of<StoreResult>(context);

    var platform = Theme.of(context).platform;

    Color _currentBGColor1 = Color(0xff82ccdd);
    Color _currentBGColor2 = Color(0xff0c2461);

    List<String> processResult() {
      List<String> listresult = new List(4);

      switch (result.getResult()) {
        case 'CYB':
          {
            listresult[0] = 'Cyber sécurité';
            listresult[1] = './assets/images/cyber.jpg';
            listresult[2] = filiere.getCyb().description;
            listresult[3] = filiere.getCyb().link;
          }
          break;
        case 'DSIA':
          {
            listresult[0] = 'Data Science et IA';
            listresult[1] = './assets/images/datascience.jpg';
            listresult[2] = filiere.getDsia().description;
            listresult[3] = filiere.getDsia().link;
          }
          break;
        case 'INFO':
          {
            listresult[0] = 'Informatique';
            listresult[1] = './assets/images/INFO.jpg';
            listresult[2] = filiere.getInfo().description;
            listresult[3] = filiere.getInfo().link;
          }
          break;
        case 'SE':
          {
            listresult[0] = 'Systèmes embarqués';
            listresult[1] = './assets/images/SE.jpg';
            listresult[2] = filiere.getSe().description;
            listresult[3] = filiere.getSe().link;
          }
          break;
        case 'SEI':
          {
            listresult[0] = 'Système electroniques intélligents';
            listresult[1] = './assets/images/SEI.jpg';
            listresult[2] = filiere.getSei().description;
            listresult[3] = filiere.getSei().link;
          }
          break;
        case 'ENE':
          {
            listresult[0] = 'Energie';
            listresult[1] = './assets/images/ENE.jpg';
            listresult[2] = filiere.getEn().description;
            listresult[3] = filiere.getEn().link;
          }
          break;
        case 'GI':
          {
            listresult[0] = 'Génie industriel';
            listresult[1] = './assets/images/GI.jpg';
            listresult[2] = filiere.getGi().description;
            listresult[3] = filiere.getGi().link;
          }
          break;
        case 'BIO':
          {
            listresult[0] = 'Bio-technologies et E-santé';
            listresult[1] = './assets/images/BIO.jpg';
            listresult[2] = filiere.getBio().description;
            listresult[3] = filiere.getBio().link;
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
      String filliereResultTitle = processResult()[0];
      return Text(
        filliereResultTitle,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
      );
    }



    Widget description() {
      String filliereResultDescription = processResult()[2];

      if(platform == TargetPlatform.android){
        return Container(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          child: Text(
            filliereResultDescription,
            style: TextStyle(color: Colors.white, ), textAlign: TextAlign.justify,),
        );
      }
      else{
        return Container(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          child: Text(
            filliereResultDescription,
            style: TextStyle(color: Colors.white, ), textAlign: TextAlign.justify,),
        );
      }

    }

    Widget enApprendrePlus() {
      String filliereResultLink = processResult()[3];
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
              onPressed: () {
                var url = filliereResultLink;
                launch(url);
              },
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
            colors: [_currentBGColor1, _currentBGColor2],
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
                    "Tu es fais pour ...",
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
                    child: Text("Recommencer",style: TextStyle(color: _currentBGColor2, fontWeight: FontWeight.bold),),
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

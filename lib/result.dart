import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'storeResult.dart';

class Result extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    var result = Provider.of<StoreResult>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Résultats"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(result.getResult()),
            FlatButton(
              child: Text("Recommencer"),
              onPressed: (){
                result.resetQuizPoint();
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
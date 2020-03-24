import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'storeResult.dart';

class Result extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    var result = Provider.of<StoreResult>(context);

    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Résultat",
                    style: TextStyle(fontSize: 25.0, color: Colors.black),
                  ),
                ),
              ),
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
      ),
    );
  }
}
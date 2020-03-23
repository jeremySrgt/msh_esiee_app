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
      body: Center(child: Text(result.getResult()),),
    );
  }
}
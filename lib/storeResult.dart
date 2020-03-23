import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class StoreResult extends ChangeNotifier{

  int _DSIA = 0;
  int _CYB = 0;
  int _INFO = 0;
  int _SEI = 0;
  int _SE = 0;
  int _BIO = 0;
  int _GI = 0;
  int _ENE = 0;

  List<Map<String,dynamic>> _point = [
    {"filliere": "DSIA", "score" : 0},
    {"filliere": "CYB", "score" : 0},
    {"filliere": "SE", "score" : 0},
  ];

  void addPoint(String filliere){

    if(filliere == "DSIA"){
      _point[0]['score']++;
    }

    if(filliere == "CYB"){
      _point[1]['score']++;
    }

    if(filliere == "SE"){
      _point[2]['score']++;
    }

    if(filliere == "INFO"){
      _INFO++;
    }

    if(filliere == "SEI"){
      _SEI++;
    }

    if(filliere == "BIO"){
      _BIO++;
    }

    if(filliere == "GI"){
      _GI++;
    }

    if(filliere == "ENE"){
      _ENE++;
    }

    notifyListeners();
  }

  String getResult(){
    _point.sort((a,b) => a['score'].compareTo(b['score']));
    print(_point.last['filliere']);
    return _point.last['filliere'];
  }

}

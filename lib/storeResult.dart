import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StoreResult extends ChangeNotifier{

  List<Map<String,dynamic>> _point = [
    {"filliere": "DSIA", "score" : 0},
    {"filliere": "CYB", "score" : 0},
    {"filliere": "SE", "score" : 0},
    {"filliere": "INFO", "score" : 0},
    {"filliere": "SEI", "score" : 0},
    {"filliere": "BIO", "score" : 0},
    {"filliere": "GI", "score" : 0},
    {"filliere": "ENE", "score" : 0},
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
      _point[3]['score']++;
    }

    if(filliere == "SEI"){
      _point[4]['score']++;
    }

    if(filliere == "BIO"){
      _point[5]['score']++;
    }

    if(filliere == "GI"){
      _point[6]['score']++;
    }

    if(filliere == "ENE"){
      _point[7]['score']++;
    }

    notifyListeners();
  }

  void resetQuizPoint(){
    _point = [
      {"filliere": "DSIA", "score" : 0},
      {"filliere": "CYB", "score" : 0},
      {"filliere": "SE", "score" : 0},
      {"filliere": "INFO", "score" : 0},
      {"filliere": "SEI", "score" : 0},
      {"filliere": "BIO", "score" : 0},
      {"filliere": "GI", "score" : 0},
      {"filliere": "ENE", "score" : 0},
    ];

    notifyListeners();
  }

  String getResult(){
    _point.sort((a,b) => a['score'].compareTo(b['score']));
    print(_point.last['filliere']);
    return _point.last['filliere'];
  }

}

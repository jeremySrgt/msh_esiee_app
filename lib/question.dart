import 'package:flutter/material.dart';

class Question {
  String question;
  String filliere;

  Question(String q, String f) {
    this.question = q;
    this.filliere = f;
  }
}

class QuestionData {
  List<Question> getQuestion() {
    List<Question> questionList = [
      Question("t'aime la data science", "DSIA"),
      Question("t'aime la cyber securité", "CYB"),
      Question("t'aime les voitures", "SE")
    ];

    return questionList;
  }
}

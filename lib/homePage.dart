import 'package:flutter/material.dart';
import 'question.dart';
import 'result.dart';
import 'package:provider/provider.dart';
import 'storeResult.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<Question> question = QuestionData().getQuestion();
  int actualQuestion = 0;

  @override
  Widget build(BuildContext context) {

    var result = Provider.of<StoreResult>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Esiee"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(question[actualQuestion].question),
            FlatButton(
              child: Text('OUI'),
              onPressed: () {
                if (actualQuestion == question.length - 1) {
                  result.addPoint(question[actualQuestion].filliere);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Result()));
                } else {
                  result.addPoint(question[actualQuestion].filliere);
                  setState(() {
                    actualQuestion++;
                  });
                }
              },
            ),

            FlatButton(
              child: Text('NON'),
              onPressed: () {
                if (actualQuestion == question.length - 1) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Result()));
                } else {
                  setState(() {
                    actualQuestion++;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

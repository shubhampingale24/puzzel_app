import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

void main() => runApp(MyClass());

class MyClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyClassState();
  }
}

class _MyClassState extends State<MyClass> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'Which is your fevourite fort?',
        'answers': ['Raigad', 'Rajgad', 'Torna'],
      },
      {
        'questionText': 'Which is your fevourite place?',
        'answers': ['Mumbai', 'Pune', 'Delhi'],
      },
      {
        'questionText': 'Which is your fevourite movie?',
        'answers': ['Avenger', 'X-man', 'Black Panther'],
      },
    ];
    void AnswerQuestion() {
      setState(() => {
            _questionIndex = _questionIndex + 1,
          });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("CUSTOM WIDGETS"),
        ),
        body: Column(
          children: [
            MyQuestion(
              questions[_questionIndex]["questionText"] as String,
            ),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(AnswerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

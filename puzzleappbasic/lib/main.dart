import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './result.dart';

void main() {
  runApp(Puzzel());
}

class Puzzel extends StatefulWidget {
  State<StatefulWidget> createState() {
    return PuzzelState();
  }
}

class PuzzelState extends State<Puzzel> {
  var _questionIndex = 0;
  var _totalScore = 0;
  var questions = [
    {
      'questionText': 'Which is your fevourite fort?',
      'answers': [
        {'text': 'Sinhgad', 'score': 2},
        {'text': 'Rajgad', 'score': 10},
        {'text': 'red fort', 'score': 5},
      ],
    },
    {
      'questionText': 'Which is your fevourite transportation Method?',
      'answers': [
        {'text': 'car', 'score': 2},
        {'text': 'walking', 'score': 10},
        {'text': 'airoplane', 'score': 5},
      ],
    },
    {
      'questionText': 'Which is your fevourite drink?',
      'answers': [
        {'text': 'pepsi', 'score': 2},
        {'text': 'Water', 'score': 10},
        {'text': 'wiskey', 'score': 5},
      ],
    },
  ];

  void QuestAnswer(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: double.infinity,
          title: Text(
            "QUIZ",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 220, 255, 64),
              fontSize: 26,
            ),
          ),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'] as String,
                  ),
                  ...(questions[_questionIndex]['answers']
                          as List<Map<String, Object>>)
                      .map((answerText) {
                    return Answer(() => QuestAnswer(answerText['score'] as int),
                        answerText['text'] as String);
                  }).toList()
                ],
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}

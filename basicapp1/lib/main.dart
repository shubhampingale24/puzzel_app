import 'package:flutter/material.dart';

void main() {
  runApp(MyCalculator());
}

class MyCalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCalculatorState();
    //throw UnimplementedError();
  }
}

class MyCalculatorState extends State<MyCalculator> {
  var QuestionIndex = 0; //to increase index dynamically

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your fevourite color ?',
      'What\'s your fevourite Animal ?',
    ];

    void MyAnswer() {
      setState(() {
        QuestionIndex++;
      });
      print(QuestionIndex);
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Calculator'),
          ),
          body: Column(
            children: [
              Text(questions[QuestionIndex]),
              ElevatedButton(
                onPressed: MyAnswer,
                child: Text("btn1"),
              ),
              ElevatedButton(
                onPressed: () => print("Anonymous function"),
                child: Text("btn2"),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Another type of defination");
                },
                child: Text("btn3"),
              ),
            ],
          )),
    );
  }
}

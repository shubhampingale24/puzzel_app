import 'package:flutter/material.dart';

void main() => runApp(MyQuizApp());

class MyQuizApp extends StatelessWidget {
  Widget build(BuildContext context) {
    var questions = [
      'Whats your fevourite color ?',
      'Whats your fevourite pet?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(" PUZZEL  "),
        ),
        body: Column(
          children: [
            Text(questions[0]),
            ElevatedButton(
              child: Text("Button 1"),
              onPressed: () => print("Answered1"),
            ),
            ElevatedButton(
              child: Text("Button 2"),
              onPressed: () => print("Answered2"),
            ),
            ElevatedButton(
              child: Text("Button 3"),
              onPressed: () => print("Answered3"),
            ),
          ],
        ),
      ),
    );
  }
}

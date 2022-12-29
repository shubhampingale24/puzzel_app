import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resultHandler;
  Result(this.resultScore, this.resultHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 6 && resultScore > 10) {
      resultText = 'You are a partTime Treaker';
    } else if (resultScore <= 30 && resultScore > 25) {
      resultText = 'You are a Treaker';
    } else {
      resultText = 'You are Traveller';
    }
    return resultText;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          resultPhrase,
          style: TextStyle(
              fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: resultHandler,
          child: Text(
            "Reset Quiz",
            style: TextStyle(color: Colors.red),
          ),
        ),
      ]),
    );
  }
}

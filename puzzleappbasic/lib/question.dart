import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  Question(this.question);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        question,
        style: TextStyle(
          fontSize: 38,
          color: Colors.purpleAccent,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

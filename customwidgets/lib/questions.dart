import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyQuestion extends StatelessWidget {
  final String questions;
  MyQuestion(this.questions);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        questions,
        style: TextStyle(
            fontSize: 30,
            color: Colors.deepPurple,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w900),
        textAlign: TextAlign.center,
      ),
    );
  }
}

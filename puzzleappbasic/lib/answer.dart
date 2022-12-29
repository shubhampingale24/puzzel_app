import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerHandler;
  String answerText;
  Answer(this.answerHandler, this.answerText);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.orange,
          onPrimary: Colors.white,
        ),
        child: Text(
          answerText,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: answerHandler,
      ),
    );
  }
}

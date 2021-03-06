import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  //Calling constructor shorthand.
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10.0),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ));
  }
}

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  //shorthand constructor
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    //container allows to change the width
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: RaisedButton(
        child: Text(
          // String text for the answers
          answerText,
          style: TextStyle(fontSize: 18),
        ),
        color: Color(0xff01579b),
        textColor: Color(0xffffffff),
        onPressed: selectHandler,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'You did it. You got ' + resultScore.toString() + ' Score';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 250.0, 0, 0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 22,
                color: Color(0xff01579b),
              ),
              textAlign: TextAlign.center,
            ),
            FlatButton(
                onPressed: resetHandler,
                child: Text(
                  'Reset the Quiz',
                  style: TextStyle(color: Color(0xffE74292)),
                ))
          ],
        ),
      ),
    );
  }
}

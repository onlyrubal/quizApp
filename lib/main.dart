import 'package:flutter/material.dart';
import './question.dart';

void main() {
  //Function created by flutter team to run the app. It accepts the widget and displays it's property.
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// It tells that this state belongs to MyApp Class
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    print('Answer chosen');
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite animal',
      'What\'s your favorite color'
    ];
    //home is the named argument because Material App can accepts numerous arguments.
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
            backgroundColor: Color(0xff003a63),
          ),
          body: Column(
            children: <Widget>[
              Question(questions[_questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () {
                  print('Answer chosen from Anonymous function');
                },
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: _answerQuestion,
              ),
            ],
          )),
    );
  }
}

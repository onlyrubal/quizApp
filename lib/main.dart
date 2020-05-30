import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';
import './quiz.dart';

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
  static const _questions = [
    {
      'questionText': 'What\'s your favorite animal',
      'answers': ['zebra', 'dog', 'cat', 'lion']
    },
    {
      'questionText': 'What\'s your favorite color',
      'answers': ['black', 'red', 'green', 'red']
    },
    {
      'questionText': 'Which city you like the most',
      'answers': ['Toronto', 'Waterloo', 'London', 'Brampton']
    }
  ];
  void _answerQuestion() {
    print('Answer chosen');
    setState(() {
      _questionIndex++;
    });
    // print(_questionIndex);
    // if (_questionIndex >= questions.length) _questionIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    //home is the named argument because Material App can accepts numerous arguments.
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        backgroundColor: Color(0xff01579b),
      ),
      body: (_questionIndex < _questions.length)
          ? Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              answerQuestion: _answerQuestion,
            )
          : Result(),
    ));
  }
}

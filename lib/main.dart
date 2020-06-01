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
  var _totalScore = 0;

  // Data type of the custom data structure for _questions
  // List<Map<String, Object>>
  final _questions = const [
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'zebra', 'score': 10},
        {'text': 'dog', 'score': 5},
        {'text': 'cat', 'score': 20},
        {'text': 'lion', 'score': 0},
      ]
    },
    {
      'questionText': 'What\'s your favorite color',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'green', 'score': 20},
        {'text': 'yellow', 'score': 30},
      ]
    },
    {
      'questionText': 'Which city you like the most',
      'answers': [
        {'text': 'Toronto', 'score': 10},
        {'text': 'Waterloo', 'score': 30},
        {'text': 'London', 'score': 5},
        {'text': 'Brampton', 'score': 70}
      ]
    }
  ];
  void _answerQuestion(int score) {
    print('Answer chosen');
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    // print(_questionIndex);
    // if (_questionIndex >= questions.length) _questionIndex = 0;
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
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
          : Result(_totalScore, _resetQuiz),
    ));
  }
}

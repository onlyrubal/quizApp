import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
      if (_questionIndex >= 3) _questionIndex = 0;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    //home is the named argument because Material App can accepts numerous arguments.
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
            backgroundColor: Color(0xff01579b),
          ),
          body: Column(
            children: <Widget>[
              Question(questions[_questionIndex]['questionText']),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((e) {
                // e is the answer i.e list item of the answers list.
                return Answer(_answerQuestion, e);
              }).toList()
            ],
          )),
    );
  }
}

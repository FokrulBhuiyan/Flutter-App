import 'package:flutter/material.dart';
import 'package:my_app/result.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _ques = const [
    {
      'questionText': 'what\'s your hobby?',
      'answers': [
        {'text': 'Painting', 'score': 3},
        {'text': 'Gerdening', 'score': 6},
        {'text': 'Reading', 'score': 10},
        {'text': 'Traveling', 'score': 8},
      ],
    },
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite food item?',
      'answers': [
        {'text': 'Chicken', 'score': 4},
        {'text': 'Beef', 'score': 6},
        {'text': 'Kacci', 'score': 10},
        {'text': 'Chocolate', 'score': 8},
        {'text': 'Ice creame', 'score': 2},
      ],
    }
  ];
  var _quesIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
    _quesIndex = 0;
    _totalScore = 0;
    });
  }

  void _ansQues(int score) {
    _totalScore += score;
    setState(() {
      _quesIndex = _quesIndex + 1;
    });
    print(_quesIndex);
    if (_quesIndex < _ques.length) {
      print('We have more Ques!!!');
    } else {
      print("no more Ques.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First app'),
        ),
        body: _quesIndex < _ques.length
            ? Quiz(
                ansQues: _ansQues,
                quesIndex: _quesIndex,
                ques: _ques,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> ques;
  final int quesIndex;
  final Function ansQues;
  Quiz({@required this.ques, @required this.quesIndex, @required this.ansQues});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          ques[quesIndex]['questionText'],
        ),
        ...(ques[quesIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => ansQues(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}

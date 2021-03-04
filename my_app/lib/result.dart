import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetfunc;
  Result(this.resultScore, this.resetfunc);

  String get resulPhrase {
    var resultText;
    if (resultScore <= 10) {
      resultText = 'You are innocent!';
    } else if (resultScore <= 20) {
      resultText = 'You are a nice Person!';
    } else {
      resultText = 'You are crazy!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resulPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart!'),
            onPressed: resetfunc,
            color: Colors.redAccent,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

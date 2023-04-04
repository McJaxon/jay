import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback quizReset;

  Result({required this.resultScore, required this.quizReset});

  String get resultPhrase {
    String resultText;
    if (resultScore <= 6) {
      resultText = 'Greatest choices you made in your 🫵 entire life ';
    } else if (resultScore <= 9) {
      resultText = 'You like greatness 👌';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Good 😊';
    } else {
      resultText = 'Nigga... Wooot!!🤨';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 22,
                color: Colors.orange,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Switch Back to Main Menu',
              textAlign: TextAlign.center,
            ),
            style: TextButton.styleFrom(primary: Colors.lightGreen),
            onPressed: quizReset,
          )
        ],
      ),
    );
  }
}

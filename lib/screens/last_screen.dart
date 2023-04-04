import 'package:flutter/material.dart';

class Last extends StatelessWidget {
  final int totalScore;
  const Last({Key? key, required this.totalScore}) : super(key: key);

  String get resultScore {
    String resultText;
    if (totalScore <= 4) {
      resultText = 'good';
    } else if (totalScore <= 8) {
      resultText = 'not bad';
    } else {
      resultText = ' owaaye';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('last page'),
      ),
      body: Container(
        child: Text(resultScore),
      ),
    );
  }
}

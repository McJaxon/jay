import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question({Key? key, required this.questionText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      color: Colors.lightGreen,
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 26),
      ),
    );
  }
}

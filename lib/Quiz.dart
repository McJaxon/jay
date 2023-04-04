import 'package:flutter/material.dart';
import './Questions.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final int questionNumber;
  final Function questionAnswered;
  Quiz({
    required this.questions,
    required this.questionNumber,
    required this.questionAnswered,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionNumber]['questionText'],
        ),
        ...(questions[questionNumber]['answer'] as List<Map<String, dynamic>>)
            .map((answer) => Answer(
                  () => questionAnswered(answer['score']),
                ))
            .toList()
      ],
    );
  }
}

import 'package:flutter/material.dart';
import './Quiz.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  // final String questions;

  Answer(
    this.selectHandler,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.lightGreen,
          onPrimary: Colors.orange,
        ),
        onPressed: selectHandler,
        child: Text("questions"),
      ),
    );
  }
}

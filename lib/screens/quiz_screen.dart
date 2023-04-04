import 'package:flutter/material.dart';
import 'package:jay_app/screens/last_screen.dart';

class QuizScreen extends StatefulWidget {
  final List answers;

  const QuizScreen({Key? key, required this.answers}) : super(key: key);
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int totalScore = 0;

  increment(int score) {
    setState(() {
      totalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text(totalScore.toString()),
        onPressed: () {},
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Quiz'),
      ),
      body: ListView.builder(
          itemCount: widget.answers.length,
          itemBuilder: (context, Index) {
            return Column(
              children: [
                GestureDetector(
                  child: Card(
                    child: MaterialButton(
                        child: Text(
                          widget.answers[Index]['Text'],
                        ),
                        onPressed: () {
                          if (widget.answers[Index]['Text'] == 'McJaxon') {
                            increment(1);
                          } else if (widget.answers[Index]['Text'] == 'Rex') {
                            increment(2);
                          } else if (widget.answers[Index]['Text'] ==
                              'Andrew German') {
                            increment(2);
                          } else if (widget.answers[Index]['Text'] == 'Dogs') {
                            increment(1);
                          } else if (widget.answers[Index]['Text'] == 'Cats') {
                            increment(2);
                          } else if (widget.answers[Index]['Text'] ==
                              'Parrots') {
                            increment(3);
                          } else if (widget.answers[Index]['Text'] ==
                              'Titanic') {
                            increment(2);
                          } else if (widget.answers[Index]['Text'] ==
                              'Avengers') {
                            increment(1);
                          } else if (widget.answers[Index]['Text'] ==
                              'Avatar') {
                            increment(3);
                          } else if (widget.answers[Index]['Text'] ==
                              'BlackPanther') {
                            increment(4);
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => Last(
                                  totalScore: totalScore,
                                ),
                              ),
                            );
                          }
                        }),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

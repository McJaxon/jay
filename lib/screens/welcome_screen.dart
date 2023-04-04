import 'package:flutter/material.dart';
import 'package:jay_app/Quiz.dart';
import 'package:jay_app/Result.dart';
import 'package:jay_app/screens/bottom.dart';
import 'package:jay_app/screens/quiz_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  var _questionNumber = 0;
  var _totalScore = 0;
  final List<Map<String, dynamic>> _questions = const [
    {
      'questionText': 'Enter first name?',
      'answer': [
        {'Text': 'McJaxon', 'Score': 1},
        {'Text': 'Rex', 'Score': 2},
        {'Text': 'Andrew German', 'Score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favorite Pet?',
      'answer': [
        {'Text': 'Dogs', 'Score': 1},
        {'Text': 'Cats', 'Score': 3},
        {'Text': 'Parrots', 'Score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favourite Movie?',
      'answer': [
        {'Text': 'Titanic', 'Score': 5},
        {'Text': 'Avengers', 'Score': 3},
        {'Text': 'Avatar', 'Score': 1},
        {'Text': 'BlackPanther', 'Score': 7},
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionNumber = 0;
      _totalScore = 0;
    });
  }

  void _questionAnswered(int score) {
    setState(() {
      _totalScore += score;
      _questionNumber += 1;
    });
    print(_questionNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView.builder(
        itemCount: _questions.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Card(
              child: ListTile(
                title: Text(
                  _questions[index]['questionText'],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => QuizScreen(
                    answers: _questions[index]['answer'],
                  ),
                ),
              );
            },
          );
        },
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.black,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
      //     BottomNavigationBarItem(label: 'search', icon: Icon(Icons.search)),
      //     BottomNavigationBarItem(
      //         label: 'Ticket', icon: Icon(Icons.airplane_ticket)),
      //     BottomNavigationBarItem(
      //         label: 'Settings', icon: Icon(Icons.settings)),
      //   ],
      // ),
      // _questionNumber < _questions.length
      //     ? Quiz(
      //         questionNumber: _questionNumber,
      //         questionAnswered: _questionAnswered,
      //         questions: _questions,
      //       )
      //     : Result(_totalScore, _resetQuiz),
    );
  }
}

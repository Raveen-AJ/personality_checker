import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What is your favourite color?',
      'answers': [
        {'text': 'Green', 'score': 2},
        {'text': 'Blue', 'score': 5},
        {'text': 'Red', 'score': 7},
        {'text': 'Pink', 'score': 3}
      ],
    },
    {
      'question': 'What is your favourite food?',
      'answers': [
        {'text': 'Pizza', 'score': 4},
        {'text': 'Burger', 'score': 3},
        {'text': 'Submarine', 'score': 6}
      ],
    },
    {
      'question': 'What is your favourite programming?',
      'answers': [
        {'text': 'Java', 'score': 2},
        {'text': 'Kotlin', 'score': 3},
        {'text': 'JavaScript', 'score': 4},
        {'text': 'Python', 'score': 3}
      ],
    },
  ];
  var _currentQuestion = 0;
  var _score = 0;

  void updateQuestion(int answerScore) {
    setState(() {
      _currentQuestion++;
      _score += answerScore;
    });
  }

  void resetQuiz() {
    setState(() {
      _currentQuestion = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Personality Finder"),
        ),
        body: _currentQuestion < _questions.length
            ? Quiz(
                questions: _questions,
                currentQuestion: _currentQuestion,
                answerHandler: updateQuestion,
              )
            : Result(
                resetHandler: resetQuiz,
                finalScore: _score,
              ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int currentQuestion;
  final Function answerHandler;

  const Quiz(
      {Key? key,
      required this.questions,
      required this.answerHandler,
      required this.currentQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            questionText: questions[currentQuestion]['question'] as String),
        ...(questions[currentQuestion]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(
                  answerText: answer['text'] as String,
                  answerHandler: () => answerHandler(answer['score']),
                ))
      ],
    );
  }
}

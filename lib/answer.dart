import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback answerHandler;

  const Answer(
      {super.key, required this.answerText, required this.answerHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 8, right: 8),
      child: ElevatedButton(onPressed: answerHandler, child: Text(answerText)),
    );
  }
}

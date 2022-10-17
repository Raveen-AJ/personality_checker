import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question({
    super.key,
    this.questionText = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(12),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}

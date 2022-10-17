import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback resetHandler;

  const Result({Key? key, required this.resetHandler, required this.finalScore})
      : super(key: key);

  String get resultText {
    String out;
    if (finalScore <= 8) {
      out = 'You have very good personality';
    } else if (finalScore <= 11) {
      out = 'You are nice';
    } else if (finalScore <= 15) {
      out = 'You are ... strange?';
    } else {
      out = 'You have very bad personality';
    }
    return out;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: const TextStyle(fontSize: 32),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(onPressed: resetHandler, child: const Text("Restart"))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz(this.startQuiz, {super.key});

  final void Function() startQuiz;

  final quizLogo = 'assets/images/quiz-logo.png';
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            quizLogo,
            height: 300,
            // best way to apply transparency
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // try to avoid this way to add transparency in the widget
          // Opacity(
          //   opacity: 0.4,
          //   child: Image.asset(quizLogo, height: 300),
          // ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Learn flutter in the fun Way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start quiz'),
          ),
        ],
      ),
    );
  }
}

import 'package:adv_basic/data/questions.dart';
import 'package:flutter/material.dart';

import 'package:adv_basic/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
                color: Color.fromARGB(150, 255, 255, 255), fontSize: 10),
          ),
          const SizedBox(
            height: 20,
          ),
          AnswerButton(answerText: currentQuestion.answer[0], onTap: () {}),
          AnswerButton(answerText: currentQuestion.answer[1], onTap: () {}),
          AnswerButton(answerText: currentQuestion.answer[2], onTap: () {}),
          AnswerButton(answerText: currentQuestion.answer[3], onTap: () {}),
        ],
      ),
    );
  }
}

import 'package:adv_basic/question_screen.dart';
import 'package:adv_basic/start_quiz.dart';
import 'package:flutter/material.dart';

const topAlignment = Alignment.topLeft;
const bottomAlignment = Alignment.topRight;

class GradiantContainer extends StatefulWidget {
  const GradiantContainer(this.colors, {super.key});

  final List<Color> colors;

  const GradiantContainer.blue({super.key})
      : colors = const [Color(0xFFA18CD1), Color(0xFFFBC2EB)];

  @override
  State<GradiantContainer> createState() => _GradiantContainerState();
}

class _GradiantContainerState extends State<GradiantContainer> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartQuiz(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = const QuestionScreen();
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.colors,
          begin: topAlignment,
          end: bottomAlignment,
        ),
      ),
      child: screenWidget,
    );
  }
}

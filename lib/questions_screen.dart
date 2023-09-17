import 'package:flutter/material.dart';

import 'gradient_container.dart';
import 'answer_button.dart';
import 'data/question_list.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectAnswer, {super.key});

  final void Function(String answer) onSelectAnswer;
  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  _QuestionsScreenState();

  var questionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      if (questionList.hasNextQuestion(questionIndex)) questionIndex++;
    });
  }

  @override
  Widget build(context) {
    final question = questionList.questions[questionIndex];
    return GradientContainer.orange(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                question.question,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 56),
              ...question.shuffledAnswers.map((answer) => AnswerButton(
                    onPressed: () => answerQuestion(answer),
                    answerText: answer,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

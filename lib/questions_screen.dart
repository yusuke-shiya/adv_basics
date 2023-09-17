import 'package:flutter/material.dart';

import 'gradient_container.dart';
import 'answer_button.dart';
import 'data/question_list.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionIndex = 0;
  void answerQuestion() {
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
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              ...question.shuffledAnswers.map((answer) => AnswerButton(
                    onPressed: answerQuestion,
                    answerText: answer,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

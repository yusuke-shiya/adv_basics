import 'package:flutter/material.dart';
import 'gradient_container.dart';
import 'question_summary.dart';
import 'data/question_list.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.answers, required this.startQuiz});

  final void Function() startQuiz;
  final List<String> answers;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summaryData = [];
    var index = 0;
    for (var answer in answers) {
      final question = questionList.questions[index];
      summaryData.add({
        'questionIndex': index,
        'question': question.question,
        'yourAnswer': answer,
        'correctAnswer': question.answers[question.correctAnswerIndex],
      });
      index++;
    }
    return summaryData;
  }

  @override
  Widget build(context) {
    final numTotalQuestions = questionList.questions.length;
    final numCorrectAnswers = summaryData
        .where((data) => data['yourAnswer'] == data['correctAnswer'])
        .length;

    return GradientContainer.akatoki(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '正答率: ${(numCorrectAnswers / numTotalQuestions * 100).round()}%',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 80),
              SizedBox(
                height: 300,
                child: SingleChildScrollView(
                  child: QuestionSummary(summaryData),
                ),
              ),
              const SizedBox(height: 80),
              TextButton.icon(
                icon: const Icon(
                  Icons.restart_alt,
                  color: Colors.white,
                ),
                onPressed: startQuiz,
                label: const Text(
                  'Restart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

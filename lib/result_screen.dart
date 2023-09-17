import 'package:flutter/material.dart';
import 'gradient_container.dart';
import 'question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.summaryData, required this.startQuiz});

  final void Function() startQuiz;
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return GradientContainer.akatoki(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '○問中○問正解',
              ),
              const SizedBox(height: 40),
              QuestionSummary(summaryData),
              const SizedBox(height: 40),
              TextButton(
                onPressed: startQuiz,
                child: const Text('Restart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

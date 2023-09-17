import 'package:flutter/material.dart';

class QuizQuestion {
  const QuizQuestion({
    required this.question,
    required this.answers,
    required this.color,
    this.correctAnswerIndex = 0,
  });

  final String question;
  final List<String> answers;
  final Color color;
  final int correctAnswerIndex;

  List<String> get shuffledAnswers {
    final answers = List.of(this.answers);
    answers.shuffle();
    return answers;
  }
}

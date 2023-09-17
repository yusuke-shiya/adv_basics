import 'package:adv_basics/data/question_list.dart';
import 'package:flutter/material.dart';
import 'start_screeen.dart';
import 'questions_screen.dart';
import 'result_screen.dart';
import 'question_summary.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> answers = [];

  @override
  void initState() {
    activeScreen = StartScreen(startQuiz);
    super.initState();
  }

  void switchScreen(Widget screen) {
    setState(() {
      activeScreen = screen;
    });
  }

  void startQuiz() {
    setState(() {
      answers.clear();
    });
    switchScreen(QuestionsScreen(chooseAnswer));
  }

  List<Map<String, Object>> getSummaryData() {
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

  void chooseAnswer(String answer) {
    setState(() {
      answers.add(answer);
    });
    if (!questionList.hasNextQuestion(answers.length - 1)) {
      setState(() {
        switchScreen(
          ResultScreen(
            startQuiz: startQuiz,
            summaryData: getSummaryData(),
          ),
        );
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: activeScreen,
      ),
    );
  }
}

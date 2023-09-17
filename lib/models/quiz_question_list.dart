import 'quiz_question.dart';

class QuizQuestionList {
  QuizQuestionList(this.questions);

  final List<QuizQuestion> questions;

  bool hasNextQuestion(int questionIndex) {
    return questionIndex < questions.length - 1;
  }
}

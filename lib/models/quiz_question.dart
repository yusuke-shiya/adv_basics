class QuizQuestion {
  const QuizQuestion({
    required this.question,
    required this.answers,
    this.correctAnswerIndex = 0,
  });

  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  List<String> get shuffledAnswers {
    final answers = List.of(this.answers);
    answers.shuffle();
    return answers;
  }
}

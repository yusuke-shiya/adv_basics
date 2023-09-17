import '../models/quiz_question_list.dart';
import '../models/quiz_question.dart';

QuizQuestionList questionList = QuizQuestionList(
  [
    const QuizQuestion(
      question: '紫苑の花の色のような少し青みのある薄い紫色',
      answers: [
        '紫苑色',
        '藤色',
        '薄色',
        '今紫',
      ],
    ),
    const QuizQuestion(
      question: '古代の藍染の色名で渋い青色',
      answers: [
        '次縹',
        '鴨頭草',
        '露草色',
        '紺青色',
      ],
    ),
    const QuizQuestion(
      question: '紫みの暗い赤色で、茜と紫とで染めたもので、名称にある緋の色感はなく黒みの強い色',
      answers: [
        '深緋',
        '浅蘇芳',
        '槿花色',
        '一重梅',
      ],
    ),
  ],
);

import 'package:mcq_project/models/qusetions.dart';

class QuizBrain {
  int questionNumber = 0;

  final List<Questions> _questionBank = [
    Questions(
      questionText:
          "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat",
      answer: true,
    ),
    Questions(
      questionText:
          "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog",
      answer: false,
    ),
    Questions(
      questionText: "Google was originally called \"Backrub\"",
      answer: false,
    ),
  ];

  String questionsText() {
    return _questionBank[questionNumber].questionText;
  }

  bool questionsAnswer() {
    return _questionBank[questionNumber].answer;
  }

  void nextQuesition() {
    if (questionNumber < _questionBank.length - 1) {
      questionNumber++;
    }
  }

  bool isFinshed() {
    if (questionNumber < _questionBank.length - 1) {
      return true;
    } else if (questionNumber < _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    questionNumber = 0;
  }
}

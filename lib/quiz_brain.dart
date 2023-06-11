import 'package:mcq_project/models/qusetions.dart';

class QuizBrain {
  int questionNumber = 0;

  final List<Questions> _questionBank = [
    Questions(
      questionText:
          "1- In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat",
      answer: true,
    ),
    Questions(
      questionText:
          "2- Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog",
      answer: false,
    ),
    Questions(
      questionText: "3- Google was originally called \"Backrub\"",
      answer: false,
    ),
    Questions(
      questionText:
          "4- Is it legal to take home an animal you accidentally hit with your car in West Virginia, USA?",
      answer: true,
    ),
    Questions(
      questionText:
          "5- Can a person survive without drinking water for a week?",
      answer: false,
    ),
    Questions(
      questionText:
          "6- Is English the most widely spoken language in the world?",
      answer: false,
    ),
    Questions(
      questionText: "7- Does the sun revolve around the Earth?",
      answer: false,
    ),
    Questions(
      questionText: "8- Is the Great Wall of China visible from space?",
      answer: false,
    ),
    Questions(
      questionText:
          "9- Is it possible for humans to breathe underwater without any assistance?",
      answer: false,
    ),
    Questions(
      questionText: "10- Is Mount Everest the tallest mountain in the world?",
      answer: true,
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
    } else {
      return false;
    }
  }

  void reset() {
    questionNumber = 0;
  }
}

import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();
  //Score is added to this
  CountryQuiz quiz = CountryQuiz(totalQuestions: 3);
  quiz.startQuiz();

  //print('Your score is ✔️ $score and ❌ ${totalQuestions - score}');
}

// Class representing a quiz question
class Question {
  final String country;
  final String capital;

  Question(this.country, this.capital);
}

// Class handling quiz logic
class CountryQuiz {
  final List<Question> _questions = [
    Question("France", "Paris"),
    Question("Germany", "Berlin"),
    Question("India", "New Delhi"),
    Question("Japan", "Tokyo"),
    Question("Canada", "Ottawa"),
    Question("China", "Beijing"),
    Question("France", "Paris"),
    Question("Brazil", "Brasilia"),
    Question("Australia", "Canberra"),
    Question("Russia", "Moscow"),
    Question("Italy", "Rome"),
    Question("Egypt", "Cairo"),
    Question("Saudi Arabia", "Riyadh"),
    Question("Thailand", "Bangkok"),
    Question("Sweden", "Stockholm"),
    Question("Norway", "Oslo"),
  ];

  int _score = 0;
  final int totalQuestions;

  CountryQuiz({this.totalQuestions = 3}) {
    _questions.shuffle(); // randomize questions
  }

  void startQuiz() {
    print("🌍 Welcome to the Country Capitals Quiz!\n");

    for (int i = 1; i <= totalQuestions; i++) {
      _askQuestion(_questions[i], i);
    }

    _showResult();
  }

  void _askQuestion(Question question, int index) {
    String questionText = 'Q$index. ${question.country} : ';
    String? userAnswer =
        getStringInput(label: questionText).trim().toLowerCase();

    if (userAnswer == question.capital.toLowerCase()) {
      _score++;
    }
  }

  void _showResult() {
    print("🎉 Quiz Completed!");
    print('Your score is ✔️ $_score and ❌ ${totalQuestions - _score}');
  }
}

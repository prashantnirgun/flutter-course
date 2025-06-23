import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();
  String? character = '';
  //words who's max length is 6
  List<String> wordList = [
    "planet",
    "castle",
    "jungle",
    "silver",
    "rocket",
    "button",
    "dragon",
    "bottle",
    "pirate",
    "puzzle",
    "bat",
    "cat",
    "rat",
  ];
  wordList.shuffle();
  String word = wordList.first.toLowerCase();
  List<String> userGuess = List.generate(word.length, (index) => '_');
  int score = 0;
  const int totalAttempt = 6;
  //print(word);
  print(
    'You need to guess Word who\'s length is ${word.length} and you have $totalAttempt attempt to guess.',
  );
  for (var i = 0; i < totalAttempt && score < word.length; i++) {
    character =
        getStringInput(label: '${i + 1} Attempt : ')[0].trim().toLowerCase();
    if (word.contains(character)) {
      for (var j = 0; j < word.length; j++) {
        if (word[j] == character) {
          score++;
          userGuess[j] = character;
        }
      }
      print('$character found in $userGuess');
    } else {
      print('$character is not found in $userGuess');
    }
  }
  if (score == word.length) {
    print("🎉 You guessed it right the word was '$word'!");
  } else {
    print('Word was $word & score is ✔️ $score and ❌ ${word.length - score}');
  }
}

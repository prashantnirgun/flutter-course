import '../../util.dart';
import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();
  String? choice = 'Q';

  do {
    List<String> options = ["Paper", "Rock", "Scissors"];

    String? userOption =
        getStringInput(
          label: 'Select your options (P)Paper, (R)Rock, (S)Scissors : ',
        ).toUpperCase();
    int randomNo = Random().nextInt(3);

    String computerOption = options[randomNo];
    userOption = options.firstWhere((el) {
      return el[0] == userOption;
    });
    winner(userOption, computerOption);
    choice = getStringInput(label: 'Continue (Y)Yes, (N)No : ').toUpperCase();
  } while (choice[0] != 'N');
}

void winner(String userOption, String computerOption) {
  /** Game Rule
     * Rock beats Scissors
     * Scissors beats Paper
     * Paper beats Rock
     * If both players choose the same, it's a draw
    */
  print('User : $userOption Vs Computer : $computerOption');
  //True case checking
  if (computerOption == 'Rock' && userOption == 'Scissors' ||
      computerOption == 'Scissors' && userOption == 'Paper' ||
      computerOption == 'Paper' && userOption == 'Rock') {
    print('You won computer lose !');
  } else if (computerOption == 'Scissors' && userOption == 'Rock' ||
      computerOption == 'Paper' && userOption == 'Scissors' ||
      computerOption == 'Rock' && userOption == 'Paper') {
    print('You lose computer win !');
  } else {
    print('It\'s a draw');
  }
}

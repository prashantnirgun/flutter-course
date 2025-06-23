import '../../util.dart';
import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  int number = Random().nextInt(99) + 1;
  int attempt = 3, start = 1, end = 100;
  String message =
      'You need to guess a number between $start - $end and you have $attempt attempt.';
  //print(message);
  print(number);
  for (var i = 0; i < attempt; i++) {
    message = '${i + 1} Attempt Enter value between $start - $end : ';
    int? answer = getNumberInput(label: message);
    if (answer == number) {
      print('You guess it exactly right!!');
      break;
    } else if (answer > number) {
      end = answer - 1;
      print('its too high');
    } else {
      start = answer + 1;
      print('its too low');
    }
  }
}

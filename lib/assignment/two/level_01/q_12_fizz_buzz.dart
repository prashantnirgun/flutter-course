import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  List<int> numbers = List.generate(100, (index) => index + 1);
  for (var no in numbers) {
    if (no % 3 == 0 && no % 5 == 0) {
      print('Fizz-Buzz');
    } else if (no % 3 == 0) {
      print('Fizz');
    } else if (no % 5 == 0) {
      print('Buzz');
    } else {
      print(no);
    }
  }

  // print(numbers);
}

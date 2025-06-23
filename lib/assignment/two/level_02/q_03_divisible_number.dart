import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  int? number = getNumberInput(label: 'Enter a number : ');
  List<int> divisors = [];

  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      divisors.add(i);
    }
  }

  print("Divisors of $number are: $divisors");
}

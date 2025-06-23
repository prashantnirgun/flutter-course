import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  int? number = getNumberInput(label: 'Enter any Number : ');
  calculateSquareRoot(number);
}

int calculateSquareRoot(int number) {
  num end = number / 2;

  for (var i = 0; i < end; i++) {}
  return 0;
}

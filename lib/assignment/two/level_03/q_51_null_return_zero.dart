import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  int? number;
  print(number);
  print(nullCheck(number));
}

int nullCheck(int? number) {
  return number ?? 0;
}

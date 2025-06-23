import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();
  print('Find Leap Year');
  int? year = getNumberInput(label: 'Enter year : ');
  if (findLeapYear(year)) {
    print('$year is a leap year');
  } else {
    print('$year not is a leap year');
  }
}

bool findLeapYear(int year) {
  //Rule : year is divisible by 4 and not divisible by 100 OR it is divisible by 400

  bool isLeap = false;

  if (year / 4 == 0 && year / 100 != 0) {
    isLeap = true;
  } else if (year / 400 == 0) {
    isLeap = true;
  }

  return isLeap;
}

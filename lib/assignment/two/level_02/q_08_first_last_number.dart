import '../../util.dart';
import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  List<int> numbers = [2, 3, 6, 8, 16, 33, 55, 61, 73, 88, 93, 33, 111];

  print('1st number is ${numbers.first} and last number is ${numbers.last}');
  print(
    '1st number is ${numbers[0]} and last number is ${numbers[numbers.length - 1]}',
  );
}

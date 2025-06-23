import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  List<int> numbers = [2, 3, 6, 8, 16, 33, 55, 61, 73, 88, 93, 33, 111];

  List<int> evenList =
      numbers.where((no) {
        return no % 2 == 0;
      }).toList();

  print(evenList);
}

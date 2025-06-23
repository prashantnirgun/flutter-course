import '../../util.dart';
import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  List<int> numbers = [2, 3, 6, 8, 16, 33, 55, 61, 73, 88, 93, 33, 8];

  print(removeDuplicate(numbers));
}

List<int> removeDuplicate(List<int> numbers) {
  List<int> newList = [];
  for (var number in numbers) {
    if (!newList.contains(number)) {
      newList.add(number);
    }
  }
  return newList;
}

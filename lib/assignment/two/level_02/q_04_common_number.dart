import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  List<int> list1 = [1, 3, 5, 8, 15, 33, 33, 67, 78, 88, 92];
  List<int> list2 = [2, 3, 6, 8, 16, 33, 55, 61, 73, 88, 93, 33, 111];

  Set<int> common = list1.where((item) => list2.contains(item)).toSet();

  print(common);
}

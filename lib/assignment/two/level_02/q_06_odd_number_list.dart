import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  List<int> numbers = [2, 3, 6, 8, 16, 33, 55, 61, 73, 88, 93, 33, 111];

  print(foo(numbers));
}

List<int> foo(List<int> nos) {
  List<int> newList = [];
  newList.add(nos.first);
  newList.add(nos.last);
  //alternative code
  /*
  newList.add(nos[0]);
  newList.add(nos[nos.length - 1]);
  */
  return newList;
}

import '../../util.dart';
import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();
  num area = calculateAreaOfCircle(44);
  print('Area of circle is $area');
}

num calculateAreaOfCircle(int radius) {
  //pi value is defined in maths package
  return 2 * pi * radius;
}

import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  String? str = getStringInput(label: 'Enter any sentense : ');

  str = str.split(' ').reversed.join(' ');
  print('Reverse String is\n $str');
}

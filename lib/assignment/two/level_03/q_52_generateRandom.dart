import 'dart:math';
import '../../util.dart';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  int status;
  for (var i = 0; i < 5; i++) {
    //print(generateRandom());
    status = generateRandom() ?? 0;
    print('Status : $status');
  }
}

int? generateRandom() {
  int number = Random().nextInt(2);
  return number == 0 ? null : number;
}

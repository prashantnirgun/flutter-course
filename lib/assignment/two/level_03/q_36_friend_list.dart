import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  List<String> friendLists = "Anand Rajesh Paresh Ashok Rajiv Asha Swara".split(
    ' ',
  );
  print('Friends starting with A');
  for (String friend in friendLists) {
    if (friend[0] == 'A' || friend[0] == 'a') {
      print(friend);
    }
  }
}

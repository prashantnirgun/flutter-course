import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();
  //35 Days list using function
  String? choice = '';
  List<Map<String, int>> days = [];
  Set<String> dayNames = {
    "sunday",
    "monday",
    "tuesday",
    "wednesday",
    "thursday",
    "friday",
    "saturday",
  };

  do {
    choice =
        getStringInput(
          label: '(A)Add Expenses, (V)View List (P)Print total (Q)Quit : ',
        ).toUpperCase();
    switch (choice[0]) {
      case 'A':
        String? dayName = getStringInput(label: 'Enter day name : ');

        if (dayNames.contains(dayName)) {
          if (days.any((day) => day.keys.first == dayName)) {
            print('$dayName record already exists');
          } else {
            int? amount = getNumberInput(label: 'Enter expenses amount : ');
            days.add({dayName: amount});
          }
        } else {
          print('$dayName is not a valid day');
        }
        break;
      case 'V':
        for (var el in days) {
          print('$el');
        }
        break;
      case 'T':
        int total = days
            .map((day) => day.values.first)
            .reduce((value, element) => value + element);

        print('Total amount: $total');
        break;
      default:
    }
  } while (choice[0] != 'Q');
}

import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  List<Map<String, String>> contacts = [
    {'name': 'Alice', 'phone': '12345'},
    {'name': 'Bob', 'phone': '987654321'},
    {'name': 'Charlie', 'phone': '555123'},
    {'name': 'David', 'phone': '8005551234'},
    {'name': 'Eve', 'phone': '4444'},
    {'name': 'Frank', 'phone': '112233445566'},
    {'name': 'Grace', 'phone': '7020'},
    {'name': 'Heidi', 'phone': '9999999'},
    {'name': 'Ivan', 'phone': '121212'},
    {'name': 'Judy', 'phone': '88005553535'},
  ];

  print(
    contacts.where((contact) {
      //force confirmation that value exists
      return contact['phone']!.length == 4;
    }).toList(),
  );
}

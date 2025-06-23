import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  List<Map<String, dynamic>> peoples = [
    {'name': 'Aarav', 'city': 'Mumbai', 'age': 25, 'country': 'Russia'},
    {'name': 'Isha', 'city': 'Delhi', 'age': 22, 'country': 'Russia'},
    {'name': 'Rahul', 'city': 'Bengaluru', 'age': 30, 'country': 'Russia'},
    {'name': 'Diya', 'city': 'Kolkata', 'age': 27, 'country': 'Russia'},
    {'name': 'Vivaan', 'city': 'Chennai', 'age': 24, 'country': 'Russia'},
  ];
  for (var person in peoples) {
    person['country'] = 'India';
  }
  int count = 1;
  for (var person in peoples) {
    Map<String, dynamic> val = person;

    if (count == 1) {
      print(val.keys);
    }
    print(val.values);
    count++;
  }
}

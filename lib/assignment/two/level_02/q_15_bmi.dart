import 'dart:io';
import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();
  /*
  BMI= weight in kg / (height in meters)2
  */

  print('Enter your weight in kg: ');
  double weight = double.parse(stdin.readLineSync()!);

  print('Enter your height in meters: ');
  double height = double.parse(stdin.readLineSync()!);

  double bmi = weight / (height * height);
  print('\nYour BMI is: $bmi');

  // Optional: Interpretation
  if (bmi < 18.5) {
    print('Category: Underweight');
  } else if (bmi >= 18.5 && bmi < 24.9) {
    print('Category: Normal weight');
  } else if (bmi >= 25 && bmi < 29.9) {
    print('Category: Overweight');
  } else {
    print('Category: Obesity');
  }
}

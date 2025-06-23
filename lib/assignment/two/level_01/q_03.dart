import 'dart:io';
//import 'dart:math';

void main() {
  //01 simple intrest
  /*
  const double rateOfInterest = 6.0;
  print('Enter amount to be invested for a year : ');
  double? principal = double.parse(stdin.readLineSync()!);
  double maturityAmount = principal + ((principal * rateOfInterest) / 100);
  print('Your maturity amount will be $maturityAmount');
  */

  //02 find square of number
  /*
  print('Enter a number I will tell you its sqr');
  int? no = int.parse(stdin.readLineSync()!);
  print('Square of $no is ${no * no}');
  */

  //03 finding quotient and remender of two number
  /*
  print('Enter 1st no');
  int? no1 = int.parse(stdin.readLineSync()!);
  print('Enter 2nd no');
  int? no2 = int.parse(stdin.readLineSync()!);
  if (no1 > no2) {
    print('The given nos are $no1 and $no2');
    print('quotient is ${no1 / no2}');
    print('remenderis is ${no1 % no2}');
  }
  */

  //04 Swapping two numbers
  /*
  print('Enter 1st no');
  int? no1 = int.parse(stdin.readLineSync()!);
  print('Enter 2nd no');
  int? no2 = int.parse(stdin.readLineSync()!);

  no1 = no1 + no2;
  no2 = no1 - no2;
  no1 = no1 - no2;
  print('Now 1st No. is $no1 and 2nd No. is $no2');
  */

  //05 bill split Calculate Tip
  /*
  print('Enter bill amount');
  double? billAmount = double.parse(stdin.readLineSync()!);
  print('Enter contributors');
  int? no = int.parse(stdin.readLineSync()!);
  print('Per head bill amount is ${billAmount / no}');
  */

  //06 convert time into minute
  /*
  print('Enter time to reach office in HH:mm format');
  String value = stdin.readLineSync()!;
  List<String> timeTaken = value.split(':').toList();
  int minuteTaken = (int.parse(timeTaken[0]) * 60) + int.parse(timeTaken[1]);
  print('Total time in minutes are $minuteTaken');
  */

  //07 odd and even no
  /*
  List<int> nos = [11, 12, 13, 14, 15];
  List<int> odd = [];
  List<int> even = [];
  for (var el in nos) {
    el % 2 == 0 ? odd.add(el) : even.add(el);
  }
  print('Even numbers: $even');
  print('Odd numbers: $odd');
  */

  //08 Natural No.
  /*
  print('Enter ending no I will give you its total');
  int? endingNo = int.parse(stdin.readLineSync()!);
  int total = 0;
  for (int i = 0; i <= endingNo; i++) {
    total += i;
  }
  print('Sum of no\'s is $total');
  */

  //09 Multiplicatio of table
  /*
  print('Enter no for which you want to print table starting from 1');
  int? no = int.parse(stdin.readLineSync()!);
  List<int> table = List.generate(10, (no) {
    return (no + 1) * 2;
  });
  print('Table of $no');
  print(table);
  */

  //10 calculate the power of
  /*
  print('Enter no');
  int? no = int.parse(stdin.readLineSync()!);
  print('Enter its power');
  double? power = double.parse(stdin.readLineSync()!);
  num answer = pow(no, power);
  print('$no power of $power will be $answer');
  */

  //simple calculator
  print('Enter 1st no');
  int? no1 = int.parse(stdin.readLineSync()!);
  print('Enter 2nd no');
  int? no2 = int.parse(stdin.readLineSync()!);
  print('Enter (A)addition, (S)Subtracton, (M)Multiplication and (D)Division');
  String method = stdin.readLineSync()!;
  print('Given nos are $no1 and $no2');
  switch (method) {
    case 'A' || 'a':
      print('Addition will be ${no1 + no2}');
      break;
    case 'S' || 's':
      print('Subtraction will be ${no1 + no2}');
      break;
    case 'M' || 'm':
      print('Multiplication will be ${no1 * no2}');
      break;
    default:
      print('Division will be ${no1 / no2}');
  }
}

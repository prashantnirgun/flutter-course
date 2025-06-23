import '../../util.dart';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  //01 Print your name multiple time using function
  /*
  void printName(String value, int times) {
    for (int i = 0; i < times; i++) {
      print('${i + 1}. $value');
    }
  }

  print('Enter the name you want to print');
  String? name = getStringInput();

  print('Enter how many times to print');
  int? times = getNumberInput();
  clearScreen();
  printName(name, times);
  */

  //02 Print even number between interval
  /*
  int? startingNumber = getNumberInput(label: 'Enter Starting no : ');
  int? endingNumber = getNumberInput(label: 'Enter Starting no : ');
  //using funciton
  evenNumberListPrinting(startingNumber, endingNumber);
  */

  //03 greeting func
  /*
  String greeting(String name, {String greeting = "Welcome to WsCubetech "}) {
    return greeting + name;
  }

  String? name = getStringInput(label: 'Enter your name : ');
  print(greeting(name));
  print(greeting(name, greeting: 'Hello! '));
  */

  //04 CUI calculator
  /*
  int? no1, no2;
  String choice = '';
  void calculator(num no1, num no2, String operation) {
    switch (choice[0]) {
      case 'A':
        print('Sum = ${no1 + no2}');
        break;
      case 'S':
        print('Difference = ${no1 - no2}');
        break;
      case 'M':
        print('Product = ${no1 * no2}');
        break;
      case 'D':
        if (no2 != 0) {
          print('Quotient = ${no1 / no2}');
        } else {
          print('Cannot divide by zero');
        }
        break;
      case 'Q':
        print('Exiting...');
        break;
      default:
        print('Invalid choice');
    }
  }

  do {
    no1 = getNumberInput(label: 'Enter No 1 : ');
    no2 = getNumberInput(label: 'Enter No 2 : ');

    choice =
        getStringInput(
          label: '(A)Add, (S)Subtract, (M) Multiply, (D)Divide & (Q)Quit : ',
        ).toUpperCase();

    calculator(no1, no2, choice[0]);
    choice =
        getStringInput(
          label: 'Do you want to continue (Y)Yes (Q)No : ',
        ).toUpperCase();
  } while (choice[0] != 'Q');
  */

  //05 fun to handle nulable int
  /*
  void printNumber(int? number) {
    if (number == null) {
      print('Number is null');
    } else {
      print('Number is $number');
    }
  }

  printNumber(44);
  printNumber(null);
  */
}

void evenNumberListPrinting(int start, int end) {
  int count = (end - start) + 1;

  List<int> nos = List.generate(count, (no) => (no + start));

  print(nos.where((n) => n % 2 == 0).toList());
}

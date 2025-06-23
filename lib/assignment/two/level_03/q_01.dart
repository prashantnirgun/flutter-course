import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();
  //01 print Hello I am "John Doe" and Hello I'am "John Doe" with single and double quote
  /*
  print('I am "John Doe"');
  print('Hello I\'am "John Doe"');

  print("I am \"John Doe\"");
  print("Hello I'am \"John Doe\"");
  */

  //03
  /*
  int number = 7;
  print(number);
  */

  /*
  int? sqrInput = getNumberInput(label: 'Enter no : ');
  print('$sqrInput squar is ${sqrInput * sqrInput}');
  */

  /*
  String? firstName = getStringInput(label: 'Enter first name : ').trim();
  String? lastName = getStringInput(label: 'Enter last name : ').trim();
  String fullName = '$firstName $lastName';
  print('Your full name is $fullName');
  */

  //09 remove all whitespace from string
  /*
  String? sentense =
      getStringInput(label: 'Enter a string with spaces : ').trim();
  sentense = sentense.replaceAll(' ', '');
  print('After removing spaces it will be $sentense');
  */
  //10 convert string to int
  /*
  int? number = getNumberInput(label: 'Enter a number : ');
  // ignore: unnecessary_type_check
  if (number is int) {
    print('value is an int');
  } else if (number is String) {
    print('value is a String');
  }
  */

  //18 Generate Multiplication table of 1-9
  /*
  for (var i = 1; i <= 9; i++) {
    print('\nTable of $i');
    for (var j = 1; j <= 10; j++) {
      print('$i X $j = ${i * j}');
    }
  }
  */

  //20 print 1 to 100 but not 41;
  /*
  List<int> test = List.generate(99, (index) => index + 1);
  print(test.where((no) => no != 41));
  */
  //21 print your own name using funciton
  /*
  String? name = getStringInput(label: 'Enter your name : ').trim();
  void foo(name) {
    print('Your name is $name');
  }

  foo(name);
  */

  //26 add(no1, no2)
  //print(add(45, 33.33));
  //27 maxno
  /*
  int no1 = 10, no2 = 33, no3 = 99;
  num lagrgest = maxNo(no1, no2, no3);
  print('Larges no is $lagrgest');
  */

  //28 isEven(no) return true if even otherwise false
  /*
  int no = 3;
  print('$no is event no is ${isEven(no)}');
  */

  //30 create user with name and aget
  /*
  User prakash = User("Prakash", 25);
  prakash.info();
  */

  //31 calculate area of rectangular
  /*
  int length = 25, width = 33;
  print('Area of rectangular is ${calculateAreaOfRectangular(length, width)}');
  */

  //32 Create a list of names and print all using lists
  /*
  List<String> names =
      "Aarav Vivaan Rahul Karan Aditya Ananya Isha Priya Diya Sneha".split(' ');

  for (String name in names) {
    print(name);
  }
  */

  //33 Creat a set of fruits and print all names
  /*
  Set<String> fruits = Set.from(
    "Mango Banana Guava Papaya Jackfruit Lychee Sapota Custard Apple Indian Gooseberry Pomegranate"
        .split(' '),
  );
  for (String fruit in fruits) {
    print(fruit);
  }
  */
  //34 Need some detail
}

num add(num no1, num no2) {
  return no1 + no2;
}

num maxNo(num no1, num no2, num no3) {
  num max = no1;
  if (no2 > max) {
    max = no2;
  }
  if (no3 > max) {
    max = no3;
  }

  return max;
}

bool isEven(num number) {
  return number % 2 == 0;
}

class User {
  String name;
  int age;
  bool isActive;
  DateTime createdAt;
  //multile force initilisation and with body
  User(this.name, this.age) : isActive = true, createdAt = DateTime.now() {
    print('User instance is created');
  }

  info() {
    print('User Info Name : $name, Age : $age, Status : $isActive');
  }
}

num calculateAreaOfRectangular(num length, num width) {
  return length * width;
}

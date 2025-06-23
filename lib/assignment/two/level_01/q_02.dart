import 'dart:io';

void main() {
  //01 Print string with single and double quote
  /*
  print("Mom said \"How eat chocolate?\"");
  print('son replied i did\'t eat that chocklate');
  */

  //02 print(variabls)
  /*
  String name = "Prashant";
  print('My name is $name.');
  */

  //03 remove whitespace from string
  /*
  print('Enter the string and seprate it with space');
  String? name = stdin.readLineSync()!;
  name = name.split(" ").join();
  print('Now your value is $name');
  */

  //04 convert string to int
  /*
  print('Enter any no');
  int? no = int.parse(stdin.readLineSync()!);
  print('your no is $no');
  */

  //05 reverse a string using function
  String reverse(String value) {
    String reverseValue = '';
    List<String> values = value.split('');
    for (int i = values.length - 1; i >= 0; i--) {
      reverseValue += values[i];
    }
    return reverseValue;
  }

  print('Enter a string to get it reverse');
  String name = stdin.readLineSync()!;
  if (name.isEmpty) {
    print('sorry you entered null or empty');
  } else {
    print('here is your reverse string ${reverse(name)}');
  }
}

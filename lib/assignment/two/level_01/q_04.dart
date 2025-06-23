import 'dart:io';

void main() {
  //01 vowel or consonant
  /*
  print('Enter any character to check is it vowel or consonant');
  String? character = stdin.readLineSync()!;

  List<String> vowel = ['A', 'E', 'I', 'O', 'U'];
  vowel.contains(character[0].toUpperCase())
      ? print('${character[0]} is vowel')
      : print('$character[0] is consonant');
      */

  //02 No is positive, negative or zero
  print('Enter any no');
  int? number = int.parse(stdin.readLineSync()!);
  if (number > 0) {
    print('$number is Positive number');
  } else if (number < 0) {
    print('$number is Negative number');
  } else {
    print('$number is Zero number');
  }
}

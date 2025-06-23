import '../../util.dart';
import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();
  //23 Generate random password
  print(generatePassword(10));
  print(generatePassword(15, isSpecialCharacter: false));
}

String generatePassword(int length, {bool isSpecialCharacter = true}) {
  List<String> alphabets =
      "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".split('');
  List<int> numbers = List.generate(10, (index) => index);
  List<String> specialCharacters = "~!@#%^&*()_".split('');
  String password = '';
  alphabets.shuffle();

  //to rotate the pattern
  List<String> patternList = ['String', 'Number'];
  if (isSpecialCharacter) {
    patternList.add('Special');
  }
  for (var i = 1; i <= length; i++) {
    int nextVal = Random().nextInt(patternList.length);

    String pattern = patternList[nextVal];
    switch (pattern) {
      case 'String':
        password += alphabets[i];
        break;
      case 'Number':
        nextVal = Random().nextInt(numbers.length);
        password += numbers[nextVal].toString();
        break;
      default:
        nextVal = Random().nextInt(specialCharacters.length);
        password += specialCharacters[nextVal];
    }
  }

  return password;
}

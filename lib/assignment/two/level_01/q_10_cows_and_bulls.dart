import '../../util.dart';
import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();
  String? choice = '';

  do {
    //9999-1000 =
    int? randomNumber = Random().nextInt(8999) + 1000;
    String? userNumber = getStringInput(label: 'Enter 4 digit number ');
    List<String> userList = userNumber.split('');
    List<String> randomList = randomNumber.toString().split('');
    List<String> result = [];

    print('User No : $userList');
    print('Random No : $randomList');
    if (userNumber.length == 4) {
      /*
      Bull = Right digit and right place
      Cow = Right digit but wrong place
      ❌ = Digit not exists
      */
      for (var i = 0; i < userList.length; i++) {
        if (userList[i] == randomList[i]) {
          result.add('Bull');
        } else if (randomList.contains(userList[i])) {
          result.add('Cow');
        } else {
          result.add('❌');
        }
      }
      print(result);
    } else {
      print('Incorrect digit Please retry');
    }

    choice = getStringInput(label: 'Continue (Y)Yes, (N)No : ').toUpperCase();
  } while (choice[0] != 'N');
}

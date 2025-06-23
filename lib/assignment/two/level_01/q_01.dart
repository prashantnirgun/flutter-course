import 'dart:io';
import 'dart:math';

void main() {
  //01 calculate age
  // stdout.write('Enter your age: ');
  // int? age = int.parse(stdin.readLineSync()!);

  // print('Your age remaining is ${100 - age}');

  //02 guess random No
  stdout.write('Guess the random no: ');
  int? answer = int.parse(stdin.readLineSync()!);
  var random = Random();
  int no = random.nextInt(100) + 1;
  if (no == answer) {
    print('You guessed it right');
  } else {
    print('Opps your guess is wrong try next time $no');
  }
}

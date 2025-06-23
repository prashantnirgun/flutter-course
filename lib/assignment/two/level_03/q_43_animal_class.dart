import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  Cat kitty = Cat('K01', 'Martha', 'White');
  //printing all properties
  print('Kitty id ${kitty.id}');
  print('Kitty name ${kitty.name}');
  print('Kitty colour ${kitty.colour}');
  print('Kitty sound ${kitty.sound}');
}

class Animal {
  String id;
  String name;
  String colour;

  Animal(this.id, this.name, this.colour);
}

class Cat extends Animal {
  String sound = 'Meow';
  Cat(super.id, super.name, super.colour);
}

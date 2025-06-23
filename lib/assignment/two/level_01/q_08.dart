import '../../util.dart';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  //01 create classes for laptop, House, Animal, Cat and Camera
  Laptop lappy = Laptop();
  lappy.printName();

  //constructor without params
  Animal animal = Animal();
  animal.printName();

  //constructor with params
  Cat kitty = Cat('kitty');
  kitty.printName();

  //Polymorphism
  Operation op = Addition();
  op.printMe();
  op.showMessage();

  //interface implementation
  Operation op2 = Subtraction();
  op2.printMe(); // Output: This is the Subtraction operation
}

class Laptop {
  printName() {
    print('Laptop');
  }
}

class House {
  printName() {
    print('House');
  }
}

class Animal {
  void printName() {
    print('I am animal');
  }
}

class Cat {
  String name;
  Cat(this.name);

  void printName() {
    print(name);
  }
}

class Camera {
  String name;
  Camera(this.name);

  void printName() {
    print(name);
  }
}

// 02 Inhertance type
// (I) Single Inheritance
class Dog extends Animal {
  void bark() => print("Dog barks");
}

// (II) Multi-level Inheritance
class Mammal extends Animal {
  void breathe() => print("Mammal breathes");
}

class Human extends Mammal {
  void speak() => print("Human speaks");
}

//(III) Hierarchical Inheritance
class Bird extends Animal {
  void fly() => print("Bird flies");
}

class Fish extends Animal {
  void swim() => print("Fish swims");
}

// Abstract class declaration
abstract class Operation {
  // abstract method (no body)
  void printMe();

  // concrete method (has body)
  void showMessage() {
    print("This is a concrete method in abstract class.");
  }
}

class Addition extends Operation {
  // Implementing the abstract method
  @override
  void printMe() {
    print("Addition operation");
  }
}

//Interface required implements
class Subtraction implements Operation {
  @override
  void printMe() {
    print("This is the Subtraction operation");
  }

  //although its concreate method in abstract class but in interface we need to declare it explicitly
  @override
  void showMessage() {
    print("This is a concrete method in abstract class.");
  }
}

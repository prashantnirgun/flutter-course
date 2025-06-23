import '../../util.dart';
//import 'dart:math';

// ignore_for_file: avoid_print
// ignore_for_file: unnecessary_getters_setters

void main() {
  clearScreen();

  // Creating 3 camera objects
  Camera cam1 = Camera("C001", "Canon", "Black", 1200.00);
  Camera cam2 = Camera("C002", "Nikon", "Silver", 1000.00);
  Camera cam3 = Camera("C003", "Sony", "Red", 900.00);

  // Adding to a list
  List<Camera> cameraList = [cam1, cam2, cam3];

  // Display all camera objects
  for (Camera cam in cameraList) {
    cam.info();
  }
}

class Camera {
  // Private properties
  String _id;
  String _brand;
  String _colour;
  double _price;

  Camera(this._id, this._brand, this._colour, this._price);

  void info() {
    print('ID : $_id, Brand : $_brand, Price : $_price, Colour : $_colour');
  }

  // Getter for id
  String get id => _id;

  // Setter for id
  set id(String value) {
    _id = value;
  }

  // Getter for brand
  String get brand => _brand;

  // Setter for brand
  set brand(String value) {
    _brand = value;
  }

  // Getter for colour
  String get colour => _colour;

  // Setter for colour
  set colour(String value) {
    _colour = value;
  }

  // Getter for price
  double get price => _price;

  // Setter for price
  set price(double value) {
    if (value >= 0) {
      _price = value;
    } else {
      print("Price cannot be negative.");
    }
  }
}

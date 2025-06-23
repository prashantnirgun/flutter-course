import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  House a101 = House('A101', 'Rakesh Talwar', 2583000);
  House a102 = House('A102', 'Rajesh Agarwal', 2267000);
  House a103 = House('A103', 'Brijesh Joshi', 2379000);

  List<House> taraApartment = [a101, a102, a103];
  for (var house in taraApartment) {
    house.info();
  }
}

class House {
  String id;
  String name;
  num price;

  House(this.id, this.name, this.price);

  void info() {
    print('ID : $id, Name : $name, Price : $price');
  }
}

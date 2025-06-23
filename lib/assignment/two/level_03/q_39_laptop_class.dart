import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();
  Laptop home = Laptop('H01', 'Dell Latitude', '8 GB');
  Laptop office = Laptop('O01', 'Dell Studio', '12 GB');
  Laptop studio = Laptop('O02', 'IBM Thinkpad', '16 GB');

  home.info();
  office.info();
  studio.info();
}

class Laptop {
  String id;
  String name;
  String ram;

  Laptop(this.id, this.name, this.ram);

  void info() {
    print('Configuration of your laptop is as follows');
    print('ID : $id, Name : $name, Memory : $ram');
  }
}

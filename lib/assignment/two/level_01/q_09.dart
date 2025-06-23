import '../../util.dart';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  // This variable can be null
  //type safety
  String? firstName; // Can be null or a String
  String lastName;
  int? age; //null is assigned
  //this will prit null
  print(firstName);

  //value is required
  lastName = "Gavaskar";
  print(lastName);

  //print(firstName?.length); // Output: null (doesn't throw an error)
  print(firstName ?? 'Guest');

  print("Age: $age"); // Output: Age: null
}

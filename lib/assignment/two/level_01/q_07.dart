import '../../util.dart';
// ignore_for_file: avoid_print

void main() {
  clearScreen();

  //01 create list and set
  /*
  List<String> names = ["Prashant", "Rajesh", "Dilesh", "Suresh"];
  print(names);
  //unique collection
  Set<String> direction = {"North", "East", "South"};
  direction.add("West"); //this will get added to collection
  direction.add("Nonth"); //this will get ignore
  print(direction)
  */

  //02 working with list of expenses and days
  List<Map<String, dynamic>> expensesLists = [
    {"day": "Sunday", "amount": 0.00},
    {"day": "Monday", "amount": 500},
    {"day": "Tuesday", "amount": 350},
    {"day": "Tuesday", "amount": 350},
    {"day": "Wednesday", "amount": 800.55},
    {"day": "Thursday", "amount": 888.44},
    {"day": "Friday", "amount": 220.00},
    {"day": "Saturday", "amount": 1500},
  ];
  //print(expensesLists);

  //03 Filtering list element using condition
  /*
  List<Map<String, dynamic>> filteredList = [];

  //filtering where expenses > 500
  for (var row in expensesLists) {
    if (row['amount'] > 500) {
      filteredList.add(row);
    }
  }
  
  print(filteredList);
  */

  //04 Creating and updating maps with various keys and values.
  Map<String, dynamic> employee = {
    "name": "Swara",
    "rollNo": 111,
    "delKey": "delete by Key",
    "delValue": "delete by value",
  };
  employee['div'] = 'B';
  employee['eng'] = "B-Tech";
  employee.remove("delKey");

  // Remove key(s) with value "Monday"
  employee.removeWhere((key, value) => value == "delete by value");

  print(employee);
}

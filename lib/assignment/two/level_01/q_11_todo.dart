import '../../util.dart';
//import 'dart:math';
// ignore_for_file: avoid_print

void main() {
  clearScreen();
  /*
  Remove is added for Level 03 Q36
  */
  String? userOption = '';
  do {
    List<Map<String, dynamic>> todoList = [
      {"title": "Read the book", "isCompleted": false},
      {"title": "Buy groceries", "isCompleted": false},
    ];

    userOption =
        getStringInput(
          label:
              'Select your options (A)Add, (V)View, (T)Toggle Complete (D)Delete (Q)Quit : ',
        ).toUpperCase();

    switch (userOption) {
      case 'A':
        String? title = getStringInput(label: 'Enter your task');
        todoList.add({"title": title, "isCompleted": false});
        break;
      case 'V':
        int count = 1;
        for (var row in todoList) {
          print('${count++} ${row['title']} : ${row['isCompleted']}');
        }
        break;
      case 'T':
        int? id = getNumberInput(label: 'Enter index to toggle : ');
        if (id > 0 && id <= todoList.length) {
          int row = id - 1;
          todoList[row]['isCompleted'] =
              !(todoList[row]['isCompleted'] ?? false);
        } else {
          print("Invalid index.");
        }
        print(todoList);
        break;
      default:
        int? id = getNumberInput(label: 'Enter index to Delete : ');
        if (id > 0 && id <= todoList.length) {
          int row = id - 1;
          todoList[row]['isCompleted'] =
              !(todoList[row]['isCompleted'] ?? false);
        } else {
          print("Invalid index.");
        }
        print(todoList);
    }
  } while (userOption[0] != 'Q');
}

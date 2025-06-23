import 'dart:io';

void main() {
  // find and
  List<Map<String, dynamic>> contacts = [
    {"name": "Rajesh", "contactNo": 123456},
    {"name": "Raman", "contactNo": 123456},
  ];
  String? choice;
  do {
    print('Menu');
    print('(A)Add, (V)View All, (S)Search & (Q)Quit');
    choice = stdin.readLineSync();
    switch (choice) {
      case 'A' || 'a':
        print('Enter contact name');
        String? name = stdin.readLineSync();
        print('Enter contact number');
        String? number = stdin.readLineSync();
        contacts.add({"name": name, "contactNo": number});
        break;
      case 'V' || 'v':
        print(contacts);
        break;
      case 'S' || 's':
        print('Enter searcg contact name');
        String? name = stdin.readLineSync();
        print(
          contacts.where((contact) => contact['name'] == 'Rajesh').toList(),
        );
        break;
      default:
    }
  } while (choice != 'Q');
}

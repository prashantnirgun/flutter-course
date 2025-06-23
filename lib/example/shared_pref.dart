import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "Some";
  static const String nameKey = "name";
  TextEditingController nameController = TextEditingController();
  SharedPreferences? pref;

  @override
  void initState() {
    super.initState();
    initPref();
  }

  void initPref() async {
    pref = await SharedPreferences.getInstance();
    getNameFromPref();
  }

  void getNameFromPref() {
    name = pref!.getString(nameKey) ?? "";
    setState(() {});
  }

  void setNameToPref({required String value}) {
    pref!.setString(nameKey, value);
    name = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shared Pref'), centerTitle: true),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome $name'),
            SizedBox(height: 11),
            TextField(
              controller: nameController,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 11),
            ElevatedButton(
              onPressed: () {
                setNameToPref(value: nameController.text);
                 nameController.clear(); // or set nameController.text = '';
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

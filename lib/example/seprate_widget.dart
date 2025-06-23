import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  void myFunc() {
    print('onClicked');
  }

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: bodyWdiget(),
      floatingActionButton: myFloatingButton(),
    );
  }

  Widget myFloatingButton() {
    return FloatingActionButton(onPressed: myFunc, child: myButton());
  }

  Widget myButton() {
    return Icon(Icons.call);
  }

  PreferredSizeWidget myAppBar() {
    return AppBar(
      title: Text('Home.'),
      centerTitle: true,
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
    );
  }
}

// ignore: camel_case_types
class bodyWdiget extends StatelessWidget {
  const bodyWdiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Welcome',
        style: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: 34,
        ),
      ),
    );
  }
}

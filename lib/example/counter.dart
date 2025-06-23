import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      // body: Center(
      //   child: Text(count.toString(), style: TextStyle(fontSize: 50)),
      // ),
    );
  }
}

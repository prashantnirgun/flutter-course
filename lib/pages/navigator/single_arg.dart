import 'package:flutter/material.dart';

class SingleArgPage extends StatelessWidget {
  const SingleArgPage({super.key});

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: Colors.amber.shade400,
      appBar: AppBar(title: Text('Single Argument'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(arg)],
        ),
      ),
    );
  }
}

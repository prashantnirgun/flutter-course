import 'package:flutter/material.dart';

class MultipleArg extends StatelessWidget {
  const MultipleArg({super.key});

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      backgroundColor: Colors.amber.shade400,
      appBar: AppBar(title: Text('Multiple Argument'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(args['name']), Text(args['age'].toString())],
        ),
      ),
    );
  }
}

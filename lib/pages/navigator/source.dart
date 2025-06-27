import 'package:flutter/material.dart';
import '../../app_routes.dart';

class SourcePage extends StatelessWidget {
  const SourcePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade400,
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Go to destination with args'),
            ElevatedButton(
              onPressed: () {
                ///Navigator.push(context, MaterialPageRoute(builder: (_) => ProfilePage()));
                Navigator.pushNamed(
                  context,
                  AppRoutes.SINGLEARGPAGE,
                  arguments: "Prashant",
                );
              },
              child: Text('Single Argument'),
            ),
            SizedBox(height: 11),
            ElevatedButton(
              onPressed: () {
                ///Navigator.push(context, MaterialPageRoute(builder: (_) => ProfilePage()));
                Navigator.pushNamed(
                  context,
                  AppRoutes.MULTIPLEARGPAGE,
                  arguments: {"name": "Prashant", "age": 50},
                );
              },
              child: Text('Multiple Argument'),
            ),
          ],
        ),
      ),
    );
  }
}

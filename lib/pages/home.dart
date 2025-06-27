import 'package:flutter/material.dart';
import 'package:test_widget/app_routes.dart';

//import '../example/shared_pref_counter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home'),

            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (_) => SharePrefCounter()),
                // );
                //Navigator.pushNamed(context, AppRoutes.SHAREDPREFCOUNTER);
                Navigator.pushNamed(context, AppRoutes.NOTEPAGE);
              },
              child: Text('Counter'),
            ),
          ],
        ),
      ),
    );
  }
}

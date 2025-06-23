import 'package:flutter/material.dart';
//import 'wa_data.dart';
import 'status_body.dart';
import 'footer.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Updates',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'register');
            },
            icon: Icon(Icons.search),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),

      body: StatusBody(),
      bottomNavigationBar: Footer(),

      // Floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Open new chat or perform any action
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add_comment),
      ),
    );
  }
}

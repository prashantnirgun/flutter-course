import 'package:flutter/material.dart';
//import 'wa_data.dart';
import 'chat_body.dart';
import 'footer.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'status');
            },
            icon: Icon(Icons.photo_camera),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),

      body: ChatBody(),
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

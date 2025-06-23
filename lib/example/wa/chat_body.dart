import 'package:flutter/material.dart';
import 'chat_group_navigation.dart';
import 'chat_items.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 59, 57, 57),
                hint: Text(
                  'Ask Meta AI or Search',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 233, 229, 229),
                    fontSize: 18,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 25,
                  color: const Color.fromARGB(255, 233, 229, 229),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 15),
            ChatGroupNavigation(),
            SizedBox(height: 15),
            ChatItems(),
          ],
        ),
      ),
    );
  }
}

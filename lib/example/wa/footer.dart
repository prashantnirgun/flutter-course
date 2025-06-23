import 'package:flutter/material.dart';
import 'wa_data.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80, // Important!
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            bottomTabs.map((item) {
              return Column(
                children: [
                  Icon(item['icon'], color: Colors.white),
                  SizedBox(height: 10),
                  Text(item['text'], style: TextStyle(color: Colors.white)),
                ],
              );
            }).toList(),
      ),
    );
  }
}

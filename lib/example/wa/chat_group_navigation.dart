import 'package:flutter/material.dart';
import 'wa_data.dart';

class ChatGroupNavigation extends StatelessWidget {
  const ChatGroupNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
            topLists.map((item) {
              return Container(
                margin: EdgeInsets.only(right: 15),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    item['text'],
                    style: TextStyle(
                      fontWeight:
                          item['isSelected'] == true
                              ? FontWeight.bold
                              : FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}

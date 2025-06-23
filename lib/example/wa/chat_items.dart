import 'package:flutter/material.dart';
import 'wa_data.dart';

class ChatItems extends StatelessWidget {
  const ChatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          chats.map((item) {
            return Row(
              children: [
                Icon(item['icon'], color: item['icongBg'], size: 60),
                SizedBox(width: 10, height: 70),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item['name'], style: TextStyle(color: Colors.white)),
                      Text(
                        item['message'],
                        style: TextStyle(
                          color: Colors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      item['dateTime'],
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      children: [
                        if (item['isPin'] == true)
                          Icon(Icons.push_pin, color: Colors.white),
                        if (item['isSnozzed'] == true)
                          Icon(Icons.notifications_off, color: Colors.white),
                        if (item['responseCount'] > 0)
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                item['responseCount'].toString(),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          }).toList(),
    );
  }
}

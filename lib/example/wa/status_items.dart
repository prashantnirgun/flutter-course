import 'package:flutter/material.dart';
import 'wa_data.dart';

class StatisItems extends StatelessWidget {
  const StatisItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          stauts.map((item) {
            return Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      //padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Center(
                      child: Icon(item['icon'], color: Colors.white, size: 60),
                    ),
                  ],
                ),
                SizedBox(width: 10, height: 70),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['name'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      item['dateTime'],
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                ),
              ],
            );
          }).toList(),
    );
  }
}

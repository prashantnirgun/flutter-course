import 'package:flutter/material.dart';
import 'status_items.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Status',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 80,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Icon(Icons.explore, color: Colors.blue, size: 80),
                      Positioned(
                        right: 2,
                        bottom: 7,
                        child: Icon(
                          Icons.control_point,
                          color: Colors.green,
                          size: 30,
                        ),
                      ),
                    ],
                  ),

                  Container(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add status',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Disappears after 24 hours',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              'Recent Updates',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),

            StatisItems(),
          ],
        ),
      ),
    );
  }
}

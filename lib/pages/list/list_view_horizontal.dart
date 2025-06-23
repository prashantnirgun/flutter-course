import 'package:flutter/material.dart';
import '../../data/data.dart';

class ListViewHorizontalPage extends StatelessWidget {
  const ListViewHorizontalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View Horizontal'), centerTitle: true),
      body: Container(
        padding: EdgeInsets.only(right: 11),
        height: 340,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: mData.length,
          itemBuilder: (_, index) {
            //print(index);
            return Container(
              margin: EdgeInsets.only(left: 11),
              width: 190,
              decoration: BoxDecoration(
                color: mData[index]['bg_color'],
                borderRadius: BorderRadius.circular(21),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    mData[index]['name'],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    mData[index]['mobile'].toString(),
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

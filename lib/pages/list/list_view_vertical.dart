import 'package:flutter/material.dart';
import '../../data/data.dart';

class ListViewVerticalPage extends StatelessWidget {
  const ListViewVerticalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View Vertical'), centerTitle: true),
      body: ListView.builder(
        itemCount: mData.length,
        itemBuilder: (_, index) {
          //print(index);
          return Container(
            width: double.infinity,
            height: 100,
            color: mData[index]['bg_color'],
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
    );
  }
}

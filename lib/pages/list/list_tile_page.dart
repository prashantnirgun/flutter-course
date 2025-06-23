import 'package:flutter/material.dart';
import '../../data/data.dart';

class ListTilePage extends StatelessWidget {
  const ListTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Tile'), centerTitle: true),
      body: ListView.builder(
        itemCount: mData.length,
        itemBuilder: (_, index) {
          return ListTile(
            leading: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/man.png'),
                ),
              ),
            ),
            title: Text(mData[index]['name']),
            subtitle: Text(mData[index]['mobile'].toString()),
            trailing: Column(
              children: [
                Text('11:11 am'),
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.green,
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../data/data.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: mData.map((item) {
            return Container(
              width: double.infinity,
              height: 100,
              color: item['bg_color'],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item['name'],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    item['mobile'].toString(),
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../data/data.dart';

class GridExtentPage extends StatelessWidget {
  const GridExtentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid Extent Specific'), centerTitle: true),
      body: GridView.extent(
        //childAspectRatio: width/height
        //childAspectRatio: 1 / 2,
        mainAxisSpacing: 11,
        crossAxisSpacing: 11,
        maxCrossAxisExtent: 200,
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
    );
  }
}

import 'package:flutter/material.dart';
import '../../data/data.dart';

class GridBuilderPage extends StatelessWidget {
  const GridBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid View Builder'), centerTitle: true),
      body: GridView.builder(
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 2,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          mainAxisSpacing: 11,
          crossAxisSpacing: 11,
        ),
        itemCount: mData.length,
        itemBuilder: (_, index) {
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
                // OutlinedButton(
                //   onPressed: () {
                //     ();
                //     Navigator.pushNamed(context, mData[index]['page']);
                //   },
                //   style: OutlinedButton.styleFrom(
                //     minimumSize: Size(300, 40),
                //     maximumSize: Size(400, 40),
                //     backgroundColor: Colors.amber,
                //     foregroundColor: Colors.white,
                //   ),
                //   child: Text('Outlined Button'),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}

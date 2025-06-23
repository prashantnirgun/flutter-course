import 'package:flutter/material.dart';
import '../../data/data.dart';

class GridTilePage extends StatelessWidget {
  const GridTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid Tile'), centerTitle: true),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          mainAxisSpacing: 11,
          crossAxisSpacing: 11,
        ),
        itemCount: mData.length,
        itemBuilder: (_, index) {
          return GridTile(
            header: Center(child: Text(mData[index]['name'])),
            footer: Center(child: Text(mData[index]['mobile'].toString())),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/man.png'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

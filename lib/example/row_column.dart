import 'package:flutter/material.dart';

class MyRowCol extends StatelessWidget {
  const MyRowCol({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row Col'), centerTitle: true),
      body: MyColumn(),
    );
  }
}

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'One',
          style: TextStyle(
            fontSize: 15,
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Two',
          style: TextStyle(
            fontSize: 15,
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Three',
          style: TextStyle(
            fontSize: 15,
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 200,
            height: 50,
            color: Colors.amber,
            child: Center(
              child: Text(
                'Col 1',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 100,
            height: 50,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Col 2',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 200,
            height: 50,
            color: Colors.green,
            child: Center(
              child: Text(
                'Col 3',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blue,
          //borderRadius: BorderRadius.all(Radius.circular(11)),
          //borderRadius: BorderRadius.all(Radius.elliptical(71, 11)),
          // borderRadius: BorderRadius.only(
          //   bottomLeft: Radius.circular(100),
          //   topRight: Radius.circular(100 ),
          // ),
          // borderRadius: BorderRadius.vertical(bottom: Radius.circular(51)),
          borderRadius: BorderRadius.circular(10),
          //strokeAlignInside is similar to pading, outside is similar to margine
          border: Border.all(
            width: 5,
            color: Colors.black,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),

        child: Text(
          'Welcome',
          style: TextStyle(
            color: Colors.amber,
            fontSize: 34,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

class IncDec extends StatelessWidget {
  const IncDec({super.key});

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Increment / Decrement '), centerTitle: true),
      body: Center(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 230,
                  width: 230,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      //context.watch<CounterProvider>().getCount().toString(),
                      homeState.getCount().toString(),
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //context.read<CounterProvider>().increment();
                    homeState.increment();
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  child: Icon(Icons.add, size: 40, color: Colors.white),
                ),
                SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {
                    //context.read<CounterProvider>().decrement();
                    homeState.decrement();
                    /*Provider.of<CounterProvider>(
                  context,
                  listen: false,
                ).decrementCount();*/
                  },
                  style: OutlinedButton.styleFrom(backgroundColor: Colors.red),
                  child: Icon(Icons.remove, size: 40, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

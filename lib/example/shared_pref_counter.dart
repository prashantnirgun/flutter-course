import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePrefCounter extends StatefulWidget {
  const SharePrefCounter({super.key});

  @override
  State<SharePrefCounter> createState() => _SharePrefCounterState();
}

class _SharePrefCounterState extends State<SharePrefCounter> {
  int count = 0;
  static const String countKey = "count";
  Color bgColour = Colors.black;
  SharedPreferences? pref;

  @override
  void initState() {
    super.initState();
    initPref();
  }

  void initPref() async {
    pref = await SharedPreferences.getInstance();
    updateCount();
  }

  void updateCount() {
    count = pref!.getInt(countKey) ?? 0;
    count++;
    pref!.setInt(countKey, count);
    if (count % 3 == 0 && count % 5 == 0) {
      bgColour = Colors.orange;
    } else if (count % 5 == 0) {
      bgColour = Colors.blue;
    } else if (count % 3 == 0) {
      bgColour = Colors.green;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColour,
      appBar: AppBar(title: Text('Shared Pref Counter'), centerTitle: true),
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Text(
                '$count',
                style: TextStyle(fontSize: 100, color: Colors.white38),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_widget/pages/notes/db_helper.dart';
import 'package:test_widget/pages/notes/db_provider.dart';
import 'base_app.dart';
//import 'provider/counter_provider.dart';

void main() {
  //runApp(MyRowCol());
  //runApp(MyRowCol());
  //runApp(MenuLayout());
  ///runApp(MyApp());
  runApp(
    ChangeNotifierProvider(
      //create: (context) => CounterProvider(),
      create: (context) => DBProvider(dbHelper: DbHelper.getInstance()),
      child: MyApp(),
    ),
  );
}

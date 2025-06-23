import 'package:flutter/material.dart';
//import 'example/textfield.dart';
//import 'example/login.dart';
//import 'example/register.dart';
//import 'example/tip_calculator.dart';
//import 'example/wa/chat_page.dart';
//import 'example/wa/status_page.dart';
//import 'example/menu.dart';
//import 'example/shared_pref.dart';
//import 'example/shared_pref_counter.dart';
//import 'pages/home.dart';
import 'app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: MyLogin(),
      //home: TipCalculator(),
      //home: HomePage(),
      initialRoute: AppRoutes.SPLASHPAGE,
      routes: AppRoutes.pageRoutes(),
      /*
      routes: {
        '/': (context) => HomePage(),
        'status': (context) => StatusPage(),        
      },
      */
    );
  }
}

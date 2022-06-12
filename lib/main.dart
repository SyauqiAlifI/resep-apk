import 'package:flutter/material.dart';
import 'package:resep_apk/homepages/beverages.dart';
import 'package:resep_apk/homepages/lunch.dart';
import 'package:resep_apk/homepages/snack.dart';
import 'package:resep_apk/screens/splashscreen.dart';

import 'screens/setups.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/': (context) => Setups(),
        '/welcome': (context) => WelcomeScreen(),

        //  Pages in drawer
        '/bev': (context) => BeveragePage(),
        '/lun': (context) => LunchPage(),
        '/sna': (context) => SnackPage()
      },
    );
  }
}
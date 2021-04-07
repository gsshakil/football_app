import 'package:flutter/material.dart';
import 'package:football_app/pages/LandingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football App',
      theme: ThemeData(
        primaryColor: Color(0xFF0CBA60),
        accentColor: Color(0xFF097160),
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}

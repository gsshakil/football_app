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
        primarySwatch: Colors.green,
        primaryColor: Color(0xFF0CBA60),
        accentColor: Color(0xFF097160),
        scaffoldBackgroundColor: Colors.white,
        dividerColor: Colors.grey,
        backgroundColor: Colors.white,
        shadowColor: Color(0xFF636363),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0CBA60),
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: TextTheme(headline1: TextStyle(color: Colors.white)),
        ),
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //     selectedIconTheme: IconThemeData(
        //       color: Theme.of(context).primaryColor,
        //     ),
        //     unselectedIconTheme: IconThemeData(color: Colors.grey),
        //     selectedLabelStyle:
        //         TextStyle(color: Theme.of(context).primaryColor),
        //     unselectedLabelStyle: TextStyle(color: Colors.grey)),
        textTheme: TextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}

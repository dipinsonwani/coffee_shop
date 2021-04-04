import 'dart:ui';

import 'package:coffee_shop/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Coffee Shop',
        theme: ThemeData(backgroundColor: Colors.brown[100],
            primarySwatch: Colors.brown,
            textTheme: TextTheme(
                subtitle1: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF473D3A),
                ),
                subtitle2: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF473D3A),
                ),
                headline1: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    color: Colors.brown[700]))),
        home: HomePage());
  }
}

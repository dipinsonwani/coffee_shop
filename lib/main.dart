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
        title: 'Coffee Shop',
        theme: ThemeData(
            primarySwatch: Colors.brown,
            textTheme: TextTheme(
              subtitle1: TextStyle(
                fontFamily: 'varela',
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF473D3A),
              ),
              subtitle2: TextStyle(
                fontFamily: 'varela',
                fontSize: 15.0,
                fontWeight: FontWeight.w800,
                color: Color(0xFF473D3A),
              ),
            )),
        home: HomePage());
  }
}

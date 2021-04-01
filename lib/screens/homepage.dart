import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15.0),
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Welcome, John',
                style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Container(
                    height: 45.0,
                    width: 45.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        image: DecorationImage(
                            image: AssetImage('assets/model.jpg'),
                            fit: BoxFit.cover)),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 45.0),
            child: Container(
              child: Text(
                'Let\'s select the best taste for your next coffee break!',
                style: TextStyle(
                  fontFamily: 'nunito',
                  fontSize: 17.0,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFFb0AAA7),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            
            Text(
              'Taste of the week',
              style: TextStyle(
                fontFamily: 'varela',
                fontSize: 17.0,
                fontWeight: FontWeight.w300,
                color: Color(0xFFb0AAA7),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:25.0),
              child:Text(
              'See all',
              style: TextStyle(
                fontFamily: 'varela',
                fontSize: 17.0,
                fontWeight: FontWeight.w300,
                color: Color(0xFFb0AAA7),
              ),
            ), 
            )
          ])
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:coffee_shop/widgets/coffee_card.dart';
import 'package:coffee_shop/widgets/usual_coffee.dart';
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
                'Welcome, Jake',
                style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: CircleAvatar(
                    child: Icon(
                  Icons.account_circle,
                  size: 25,
                )),
              ),
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
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Text(
                    'See all',
                    style: TextStyle(
                      fontFamily: 'varela',
                      fontSize: 17.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFFb0AAA7),
                    ),
                  ),
                )
              ]),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 410.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeCard(
                    'assets/starbucks.png',
                    'Caffe Misto',
                    'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                    499,
                    false),
                CoffeeCard(
                    'assets/starbucks.png',
                    'Caffe Latte',
                    'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                    399,
                    false),
                CoffeeCard(
                    'assets/starbucks.png',
                    'Caffe Latte',
                    'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                    399,
                    false)
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Your Usuals',
            style: Theme.of(context).textTheme.subtitle1,
          )
        ],
      ),
    );
  }
}


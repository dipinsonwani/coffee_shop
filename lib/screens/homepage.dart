import 'dart:ui';

import 'package:coffee_shop/widgets/bottom_bar.dart';
import 'package:coffee_shop/widgets/coffee_card.dart';
import 'package:coffee_shop/widgets/usual_coffee.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex=0;
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      bottomNavigationBar: BottomBar(),
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
                'It\'s a great day for coffee!',
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
                  'Best Offers',
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
                    'assets/coffee.jpg',
                    'Caffe Misto',
                    'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                    499,
                    false),
                CoffeeCard(
                    'assets/coffee2.jpg',
                    'Caffe Latte',
                    'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                    399,
                    false),
                CoffeeCard(
                    'assets/coffee3.jpg',
                    'Caffe Latte',
                    'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                    399,
                    false)
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Your Usuals',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 220.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                UsualCoffeeCard(
                    'assets/coffee.jpg', 'Espresso Coffee', 350, 4.0),
                UsualCoffeeCard('assets/coffee2.jpg', 'Latte Coffee', 350, 3.0),
                UsualCoffeeCard('assets/coffee3.jpg', 'Latte Coffee', 350, 3.0)
              ],
            ),
          ),
          SizedBox(height: 25.0)
        ],
      ),
    );
  }
}

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
                _coffeeCard(
                    'assets/starbucks.png',
                    'Caffe Misto',
                    'Coffeeshop',
                    'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                    499,
                    false),
                _coffeeCard(
                    'assets/starbucks.png',
                    'Caffe Latte',
                    'BrownHouse',
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

_coffeeCard(String img, String coffeeName, String shopName, String description,
    double price, bool isFavourite) {
  return Padding(
    padding: EdgeInsets.only(left: 15.0, right: 15.0),
    child: Container(
      height: 300.0,
      width: 225.0,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 335,
              ),
              Positioned(
                top: 75.0,
                child: Container(
                  padding: EdgeInsets.only(left: 10.0, right: 20.0),
                  height: 260,
                  width: 225,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFDAB68C)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 60.0,
                        ),
                        Text(
                          coffeeName,
                          style: TextStyle(
                            fontFamily: 'varela',
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '₹$price',
                              style: TextStyle(
                                fontFamily: 'varela',
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3A4742),
                              ),
                            ),
                            Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white),
                                child: Center(
                                    child: IconButton(
                                  icon: Icon(Icons.favorite),
                                  iconSize: 15.0,
                                  color: isFavourite ? Colors.red : Colors.grey,
                                  onPressed: () {},
                                )))
                          ],
                        )
                      ]),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

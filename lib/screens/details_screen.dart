import 'dart:ui';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String description;
  final String img;
  final String coffeeName;
  final double price;

  const DetailsScreen(
      {Key key, this.img, this.coffeeName, this.price, this.description})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.brown[50],
      body: Stack(
        children: [
          Positioned(
            bottom: 60,
            child: Container(
              height: MediaQuery.of(context).size.height - 20,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(coffeeName,
                            style: Theme.of(context).textTheme.headline1),
                        Text(
                          '₹$price',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text('Description :',style: TextStyle(),textAlign: TextAlign.left,),
                    SizedBox(height: 20,),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600]
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    Container(
                      width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.brown[800],
                        ),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text('Place Order',style: TextStyle(color: Colors.white),),
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

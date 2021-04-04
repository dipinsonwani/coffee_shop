import 'package:coffee_shop/screens/details_screen.dart';
import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  final String img;
  final String coffeeName;
  final String description;
  final double price;
  final bool isFavourite;
  CoffeeCard(this.img, this.coffeeName, this.description, this.price,
      this.isFavourite);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsScreen(img: img,coffeeName: coffeeName,price: price,description:description),
          ));
        },
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
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3A4742),
                                  ),
                                ),
                                Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: Colors.white),
                                    child: Center(
                                        child: IconButton(
                                      icon: Icon(Icons.favorite),
                                      iconSize: 15.0,
                                      color: isFavourite
                                          ? Colors.red
                                          : Colors.grey,
                                      onPressed: () {},
                                    )))
                              ],
                            )
                          ]),
                    ),
                  ),
                  Positioned(
                    top: 25,
                    left: 60,
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/starbucks.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: 225,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.brown[900],
                ),
                child: Center(
                  child: Text(
                    'Order Now',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

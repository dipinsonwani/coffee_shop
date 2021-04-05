import 'dart:ui';
import 'package:coffee_shop/widgets/counter.dart';
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
          //IconButton(icon: Icon(Icons.arrow_back_sharp),onPressed: (){},),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Colors.brown[50],
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
                      height: 30,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Description :',
                      style: TextStyle(
                          color: Colors.brown[800],
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      description,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.brown[800],
                        ),
                        child: FlatButton(
                          onPressed: () {
                            buildShowModalBottomSheet(context);
                          },
                          //_placeOrderSheet(context),
                          child: Text(
                            'Make Order',
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 30,
              child: IconButton(
                icon: Icon(Icons.arrow_back_sharp),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )),
        ],
      ),
    );
  }

  Future buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              builder: (context) => Container(
                                      //decoration: BoxDecoration(borderRadius:BorderRadius.circular(30)),

                                      child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 30),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text('Quantity',
                                                style:
                                                    TextStyle(fontSize: 20)),
                                            SizedBox(
                                              width: 110,
                                            ),
                                            Counter()
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text('Sugar Cubes',
                                                style:
                                                    TextStyle(fontSize: 20)),
                                            SizedBox(
                                              width: 75,
                                            ),
                                            Counter()
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text('Coffee Spoons',
                                                style:
                                                    TextStyle(fontSize: 20)),
                                            SizedBox(
                                              width: 60,
                                            ),
                                            Counter()
                                          ],
                                        ),
                                        Divider(
                                          height: 50,
                                        ),
                                        // SizedBox()
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 50),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                            children: <Widget>[
                                              Column(
                                                children: <Widget>[
                                                  Text('Total',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .subtitle1),
                                                  Text('₹499'),
                                                ],
                                              ),
                                              Container(
                                                width: 200,
                                                decoration: BoxDecoration(
                                                  color: Colors.brown[700],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20),
                                                ),
                                                child: FlatButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Place Order',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                              context: context);
  }
}

// Future<Widget> _placeOrderSheet(BuildContext context) {
//   return showModalBottomSheet(
//       builder: (context) => Container(
//             height: 200,
//             child: Text('Hi'),
//           ),
//       context: context);
// }

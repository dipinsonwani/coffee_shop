import 'package:coffee_shop/screens/details_screen.dart';
import 'package:flutter/material.dart';

class UsualCoffeeCard extends StatelessWidget {
  final String img;
  final String coffeeName;
  final double price;
  final double rating;

  const UsualCoffeeCard(this.img, this.coffeeName, this.price, this.rating);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsScreen(),
          ));
        },
        child: Container(
          height: 150,
          width: 125,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 1.0, blurRadius: 2.0, color: Colors.grey)
              ],
              color: Colors.white),
          child: Stack(
            children: [
              Container(
                height: 150,
                width: 125,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover)),
              ),
              Positioned(
                  left: 80,
                  bottom: 53,
                  child: CircleAvatar(
                    radius: 18,
                    child: Icon(Icons.favorite),
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.white,
                  )),
              Positioned(
                  left: 8,
                  bottom: 36,
                  child: Text(
                    coffeeName,
                    style: Theme.of(context).textTheme.subtitle2,
                  )),
              Positioned(
                  left: 8,
                  bottom: 8,
                  child: Row(
                    children: [
                      Text(
                        '₹$price',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      SizedBox(width: 18.0),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text('$rating')
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

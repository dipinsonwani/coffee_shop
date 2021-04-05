import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.brown[50]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.remove_circle,
              color: Colors.brown[400],
              size: 30,
            ),
            onPressed: () {
              setState(() {
                if(_counter> 0)
                _counter--;
              });
            },
          ),
          Text('$_counter'),
          IconButton(
            icon: Icon(
              Icons.add_circle,
              color: Colors.brown[400],
              size: 30,
            ),
            onPressed: () {
              setState(() {
                _counter++;
              });
              print('$_counter');
            },
          ),
        ],
      ),
    );
  }
}

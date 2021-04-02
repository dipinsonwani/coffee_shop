import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 20,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFF3B2B7),
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
            ),
          )
        ],
      ),
    );
  }
}

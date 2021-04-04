import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex;
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.home_outlined,
              color: Colors.brown,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book_outlined,
                color: Colors.grey[400]
              ),
              label: 'Menu',
              activeIcon: Icon(
                Icons.menu_book_outlined,
                color: Colors.brown,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account_rounded), label: 'Social'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Menu'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTap,
        selectedItemColor: Colors.brown,
      );
  }
}
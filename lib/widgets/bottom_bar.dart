import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex =0;
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
                
              ),
              label: 'Menu',
              
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account_rounded), label: 'Social'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTap,
        selectedItemColor: Colors.brown,
        type: BottomNavigationBarType.fixed,
      );
  }
}
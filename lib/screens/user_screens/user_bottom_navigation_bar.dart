import 'package:flutter/material.dart';

import '../profile_page.dart';
import 'user_add_cart_screen.dart';
import 'user_home_screen.dart';
import 'user_notification_screen.dart';
import 'user_profile_screen.dart';
import 'user_support_screen.dart';

class UserBottomNavBar extends StatefulWidget {
  //const UserBottomNavBar({ Key? key }) : super(key: key);

  @override
  State<UserBottomNavBar> createState() => _UserBottomNavBarState();
}

class _UserBottomNavBarState extends State<UserBottomNavBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserHomeScreen(),
    UserNotificationScreen(),
    UserAddToCart(),
    UserSupportScreen(),
    UserProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.support_rounded,
              color: Colors.black,
            ),
            label: 'Support',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

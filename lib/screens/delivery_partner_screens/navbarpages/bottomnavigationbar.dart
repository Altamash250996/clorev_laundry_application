import 'package:clover_application/screens/delivery_partner_screens/navbarpages/bookings.dart';
import 'package:clover_application/screens/delivery_partner_screens/navbarpages/notificationpage.dart';
import 'package:clover_application/screens/delivery_partner_screens/navbarpages/profilepage.dart';
import 'package:clover_application/screens/delivery_partner_screens/navbarpages/supportpage.dart';
import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {

  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _children =[
    BookingPage(),
    MyNotificationPage(),
    MySupportPage(),
    ProfilePage(),
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
              label: 'Bookings'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.support_rounded,
                color: Colors.black,
              ),
              label: 'Support'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_rounded,
                color: Colors.black,
              ),
              label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

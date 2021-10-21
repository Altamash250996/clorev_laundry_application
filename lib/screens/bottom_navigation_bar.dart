import 'package:clover_application/screens/notification.dart';
import 'package:clover_application/screens/profile_page.dart';
import 'package:clover_application/screens/service_provider_bookings.dart';
import 'package:clover_application/screens/support.dart';
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

  final List<Widget> _children = [
    ServiceProviderBookings(),
    NotificationPage(),
    MySupport(),
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

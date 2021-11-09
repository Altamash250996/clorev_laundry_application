// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import '../../widgets/user_widgets/user_active_bookings.dart';
import '../../widgets/user_widgets/user_closed_bookings.dart';
import 'package:flutter/material.dart';

class UserBookingsScreen extends StatefulWidget {
  @override
  _UserBookingsScreenState createState() => _UserBookingsScreenState();
}

class _UserBookingsScreenState extends State<UserBookingsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'My Bookings',
              ),
            ),
            automaticallyImplyLeading: false,
            bottom: TabBar(
              //indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: 'Active Bookings',
                ),
                Tab(
                  text: 'Closed Bookings',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              UserActiveBookingsList(),
              UserClosedBookingsList(),
            ],
          ),
        ),
      ),
    );
    ;
  }
}

import 'package:flutter/material.dart';
import 'package:clover_application/screens/delivery_partner_screens/navbarpages/activebooking.dart';
import 'package:clover_application/screens/delivery_partner_screens/navbarpages/closedbooking.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
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
            ActiveBookingsPage(),
            ClosedBookingsList(),
          ],
        ),
            ),
    );
  }
}

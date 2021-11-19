// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:clover_application/widgets/service_provider_widgets/active_bookings.dart';
import 'package:clover_application/widgets/service_provider_widgets/closed_bookings.dart';
import 'package:flutter/material.dart';

class ServiceProviderBookings extends StatelessWidget {
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
                'Service Provider Bookings',
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
              ActiveBookingsList(),
              ClosedBookingsList(),
            ],
          ),
        ),
      ),
    );
  }
}

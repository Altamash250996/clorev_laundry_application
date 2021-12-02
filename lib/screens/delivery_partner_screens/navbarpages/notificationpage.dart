import 'package:clover_application/screens/delivery_partner_screens/navbarpages/notifications_all.dart';
import 'package:clover_application/screens/delivery_partner_screens/navbarpages/notifications_bookmarked.dart';
import 'package:flutter/material.dart';

class MyNotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Notification'),
            ),
            automaticallyImplyLeading: false,
            bottom: TabBar(
              //indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Bookmarked',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              AllNotification(),
              FavoriteNotification(),
            ],
          ),
        ),
      ),
    );
  }
}

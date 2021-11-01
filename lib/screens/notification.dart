// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:clover_application/widgets/all_notifications.dart';
import 'package:clover_application/widgets/favorite_notification.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            // title: Center(
            //   child: Text('Notification'),
            // ),
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

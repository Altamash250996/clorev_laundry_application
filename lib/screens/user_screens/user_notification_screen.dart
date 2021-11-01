// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:clover_application/widgets/user_widgets/user_all_notification.dart';
import 'package:clover_application/widgets/user_widgets/user_favorite_notification.dart';
import 'package:flutter/material.dart';

class UserNotificationScreen extends StatefulWidget {
  @override
  _UserNotificationScreenState createState() => _UserNotificationScreenState();
}

class _UserNotificationScreenState extends State<UserNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'msc',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              height: 60.0,
              color: Colors.blue,
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Expanded(child: Container()),
                    TabBar(
                      labelPadding: EdgeInsets.only(
                        bottom: 8.0,
                        top: 0.0,
                        left: 0.0,
                        right: 0.0,
                      ),
                      indicatorColor: Colors.black,
                      unselectedLabelColor: Colors.white70,
                      labelColor: Colors.white,
                      tabs: [
                        Text(
                          "All",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Bookmarked",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              UserAllNotification(),
              UserFavoriteNotification(),
            ],
          ),
        ),
      ),
    );
  }
}

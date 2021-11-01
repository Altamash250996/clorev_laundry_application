// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserNotificationScreen extends StatefulWidget {
  //const UserNotificationScreen({ Key? key }) : super(key: key);

  @override
  _UserNotificationScreenState createState() => _UserNotificationScreenState();
}

class _UserNotificationScreenState extends State<UserNotificationScreen> {
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
              // AllNotification(),
              // FavoriteNotification(),
            ],
          ),
        ),
      ),
    );
  }
}

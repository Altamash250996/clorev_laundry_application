// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserHomeScreen extends StatelessWidget {
  //const UserHomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/clover.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'User Home',
          ),
        ),
        body: Center(
          child: Text(
            'User Home Screen',
          ),
        ),
      ),
    );
  }
}

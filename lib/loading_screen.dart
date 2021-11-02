// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:clover_application/screens/home_page_screen.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 7200), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomePageScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/starting_screen.gif'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

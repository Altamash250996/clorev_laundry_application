import 'package:flutter/material.dart';

class UserPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Panel'),
      ),
      body: Center(
        child: Text('Welcome'),
      ),
    );
  }
}

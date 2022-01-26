import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  static String id = 'profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('Hey I am profile'),
      ),
    );
  }

}
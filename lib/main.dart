import 'package:flutter/material.dart';
import 'package:loginui/login.dart';
import 'package:loginui/profile.dart';
import 'package:loginui/registration.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Login(),
      routes: {
       Registration.id:(context)=>Registration(),
      },
    );
  }

}
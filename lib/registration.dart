import 'package:flutter/material.dart';

class Registration extends StatefulWidget{
   static String id = 'rakibarrasta';

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Registration'),
     ),
     body: Column(
       children: [
         TextField(
        
           decoration: InputDecoration(
             label: Text('Name'),
           ),
         ),
           TextField(
           decoration: InputDecoration(
             label: Text('phone'),
           ),
         ),
           TextField(
           decoration: InputDecoration(
             label: Text('address'),
           ),
         ),
         ElevatedButton(onPressed: (){
           Navigator.pop(context);
         }, child: Text('Submit')),
        
       ],
     ),
   );
  }
}
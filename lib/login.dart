import 'package:flutter/material.dart';
import 'package:loginui/profile.dart';
import 'package:loginui/registration.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController apu = TextEditingController();

  customalartdialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.amber,
              title: Text('Really your want to delete me?'),
              content: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text('Email')),
              ),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('No')),
                ElevatedButton(onPressed: () {}, child: Text('Yes')),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [
          TextField(
            controller: apu,
            decoration: InputDecoration(
              label: Text('Email'),
            ),
          ),
          TextField(
            decoration: InputDecoration(label: Text('Password')),
          ),
          ElevatedButton(
              onPressed: () {
                customalartdialog(context);
              },
              child: Text('Login')),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Registration.id);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
         
                  textStyle:
                      MaterialStateProperty.all(TextStyle(fontSize: 18))),
              child: Text('Create Account')),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(onPressed: () {}, child: Text('Profile')),
          ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: Text('Get value')),
          Text(apu.text),
        ],
      ),
    );
  }
}

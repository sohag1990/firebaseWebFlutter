import 'package:firebaseWeb/auth_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("You are Logged in"),
          SizedBox(height: 10.0,),
          RaisedButton(
            onPressed: (){
              AuthService().signOut();
            },
            child: Center(
              child: Text('Sign Out'),
            ),
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home: Scaffold(
    backgroundColor: Colors.teal,   //because it looks for nearest build function this is for hot reload
        body: SafeArea(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch, //we can write this without changing the width every time
            children:<Widget>[
              const CircleAvatar(
                radius : 50.0,
                backgroundImage: AssetImage('images/Me.jpeg'),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Goutham',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.cyanAccent,
                  fontFamily: 'Source Sans Pro',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
                width: 150.0,
                child: Divider(
                  color: Colors.cyanAccent,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child:ListTile(
                  leading: Icon(Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+91 949 159 1493',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      color: Colors.teal,
                      fontSize: 18,
                    ),
                  ),
                )
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  title:  Text(
                    'gouthamnandula@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      color: Colors.teal,
                      fontSize: 18,
                    ),
                  ),
                  leading:Icon(
                    Icons.email,
                    color: Colors.teal,
                  ) ,
                )
              ),
            ],
            ),
       ),
    ),
    );
  }
}



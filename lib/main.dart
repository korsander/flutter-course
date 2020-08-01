import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            child: Text('Hello'),
            color: Colors.white,
            width: 100.0,
            height: 100.0,
            margin: EdgeInsets.only(left: 15.0),
            padding: EdgeInsets.all(10.0),
          ),
        ),
      ),
    );
  }
}

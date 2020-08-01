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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Text('Hello'),
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text('Hello'),
                color: Colors.blue,
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text('Hello'),
                color: Colors.red,
                padding: EdgeInsets.all(10.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

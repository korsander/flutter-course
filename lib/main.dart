import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Ask me anything'),
        ),
        body: Center(
          child: Ball8Widget(),
        ),
      ),
    ),
  );
}

class Ball8Widget extends StatefulWidget {
  @override
  _Ball8WidgetState createState() => _Ball8WidgetState();
}

class _Ball8WidgetState extends State<Ball8Widget> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        setState(() {
          ball = Random().nextInt(5) + 1;
        });
      },
      child: Image.asset('images/ball$ball.png'),
    );
  }
}

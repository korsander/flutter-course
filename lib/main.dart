import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              _throwDices();
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              _throwDices();
            },
            child: Image.asset('images/dice$rightDiceNumber.png'),
          ),
        ),
      ],
    );
  }

  void _throwDices() {
    setState(() {
      leftDiceNumber = _randomDiceNumber();
      rightDiceNumber = _randomDiceNumber();
    });
  }

  int _randomDiceNumber() {
    return Random().nextInt(6) + 1;
  }
}

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
          child: FlatButton(
            onPressed: () {
              final player = AudioCache();
              player.play('note1.wav');
            },
            child: Text('Press me'),
          ),
        ),
      ),
    ),
  );
}

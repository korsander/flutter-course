import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  void _playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Widget _createButton(Color color, int note) {
    return FlatButton(
      onPressed: () {
        _playSound(note);
      },
      color: color,
    );
  }

  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(''),
          ),
          body: Column(
            children: <Widget>[
              _createButton(Colors.red, 1),
              _createButton(Colors.orange, 2),
              _createButton(Colors.yellow, 3),
              _createButton(Colors.green, 4),
              _createButton(Colors.blue, 5),
              _createButton(Colors.indigo, 6),
              _createButton(Colors.purple, 7),
            ],
          )),
    ),
  );
}

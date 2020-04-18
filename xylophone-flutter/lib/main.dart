import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildPlayer({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildPlayer(color: Colors.red, soundNumber: 1),
              buildPlayer(color: Colors.orange, soundNumber: 2),
              buildPlayer(color: Colors.yellow, soundNumber: 3),
              buildPlayer(color: Colors.green, soundNumber: 4),
              buildPlayer(color: Colors.teal, soundNumber: 5),
              buildPlayer(color: Colors.blue, soundNumber: 6),
              buildPlayer(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

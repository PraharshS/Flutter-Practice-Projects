import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int val) {
    final player = AudioCache();
    player.play('note$val.wav');
  }

  Expanded buildKey({Color color, int soundNum}) => Expanded(
        child: FlatButton(
          color: color,
          child: Text(''),
          onPressed: () {
            playSound(soundNum);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNum: 1),
              buildKey(color: Colors.orange, soundNum: 2),
              buildKey(color: Colors.yellow, soundNum: 3),
              buildKey(color: Colors.green, soundNum: 4),
              buildKey(color: Colors.lightGreen, soundNum: 5),
              buildKey(color: Colors.indigo, soundNum: 6),
              buildKey(color: Colors.lightBlueAccent, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}

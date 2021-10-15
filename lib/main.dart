import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNo) {
    final player = AudioCache();
    player.play('note$soundNo.wav');
  }

  Expanded buildkey({color, soundNo}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundNo);
        },
        child: Text(''),
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
            children: [
              buildkey(color: Colors.red, soundNo: 1),
              buildkey(color: Colors.orange, soundNo: 2),
              buildkey(color: Colors.yellow, soundNo: 3),
              buildkey(color: Colors.green, soundNo: 4),
              buildkey(color: Colors.teal, soundNo: 5),
              buildkey(color: Colors.blue, soundNo: 6),
              buildkey(color: Colors.purple, soundNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}

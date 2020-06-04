import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildkey({Color color, int note}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(note);
        },
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
              buildkey(color: Colors.red, note: 1),
              buildkey(color: Colors.orange, note: 2),
              buildkey(color: Colors.yellow, note: 3),
              buildkey(color: Colors.green, note: 4),
              buildkey(color: Colors.teal, note: 5),
              buildkey(color: Colors.blue, note: 6),
              buildkey(color: Colors.purple, note: 7),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playMusic(int noOfMusic) {
      final player = AudioCache();
      player.play('note$noOfMusic.wav');
    }

    Expanded buildKey({Color color, int noOfMusic}) {
      return Expanded(
          child: FlatButton(
        color: color,
        onPressed: () {
          playMusic(noOfMusic);
        },
      ));
    }

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.green, noOfMusic: 1),
              buildKey(color: Colors.blue, noOfMusic: 2),
              buildKey(color: Colors.blueGrey, noOfMusic: 3),
              buildKey(color: Colors.tealAccent, noOfMusic: 4),
              buildKey(color: Colors.black, noOfMusic: 5),
              buildKey(color: Colors.pink, noOfMusic: 6),
              buildKey(color: Colors.yellow, noOfMusic: 7),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

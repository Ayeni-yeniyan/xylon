import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: Text(
            'XYLON!',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: MusicMoves(),
      ),
    );
  }
}

class MusicMoves extends StatelessWidget {
  const MusicMoves({super.key});

  Expanded indBar({required Color barColor, required int note}) {
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource('sounds/note$note.wav'));
          },
          child: Container(color: barColor)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        indBar(barColor: Colors.red, note: 1),
        indBar(barColor: Colors.orange, note: 2),
        indBar(barColor: Colors.amber, note: 3),
        indBar(barColor: Colors.green, note: 4),
        indBar(barColor: Colors.blueGrey, note: 5),
        indBar(barColor: Colors.blue, note: 6),
        indBar(barColor: Colors.purple, note: 7),
      ],
    );
  }
}

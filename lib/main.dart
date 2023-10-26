import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
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
  void playSound(int note) {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/note$note.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TextButton(
              onPressed: () => playSound(1),
              child: Container(color: Colors.red)),
        ),
        Expanded(
          child: TextButton(
              onPressed: () => playSound(2),
              child: Container(color: Colors.orange)),
        ),
        Expanded(
          child: TextButton(
              onPressed: () => playSound(3),
              child: Container(color: Colors.amber)),
        ),
        Expanded(
          child: TextButton(
              onPressed: () => playSound(4),
              child: Container(color: Colors.green)),
        ),
        Expanded(
          child: TextButton(
              onPressed: () => playSound(5),
              child: Container(color: Colors.blueGrey)),
        ),
        Expanded(
          child: TextButton(
              onPressed: () => playSound(6),
              child: Container(color: Colors.blue)),
        ),
        Expanded(
          child: TextButton(
              onPressed: () => playSound(7),
              child: Container(color: Colors.purple)),
        ),
      ],
    );
  }
}

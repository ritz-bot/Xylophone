import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
      XylophoneApp()); //if this part is single line of code , then we use fat arrow
}

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.
  void playSound(int pos) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$pos.wav');
  }

  Widget buildKey(int pos, Color color) {
    return Expanded(
      child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
          ),
          onPressed: () {
            playSound(pos);
          },
          child: Text('click me')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

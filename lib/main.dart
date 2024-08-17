import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(child: _playButton(player, 1, Colors.red)),
                Expanded(child: _playButton(player, 2, Colors.orange)),
                Expanded(child: _playButton(player, 3, Colors.yellow)),
                Expanded(child: _playButton(player, 4, Colors.green)),
                Expanded(child: _playButton(player, 5, Colors.teal)),
                Expanded(child: _playButton(player, 6, Colors.blue)),
                Expanded(child: _playButton(player, 7, Colors.purple)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _playButton(AudioPlayer player, int number, MaterialColor color) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 5),
      color: color,
      child: TextButton(
        onPressed: () {
          player.play(AssetSource('note$number.wav'));
        },
        child: Container(),
      ),
    );
  }
}

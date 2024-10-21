import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());
//=> this arrow known as arrow syntax : when we need to denote the single line expression of code then we use this

class XylophoneApp extends StatelessWidget {
  // Function for playing sound and creating the button
  Expanded playSound({required Color colorName, required int num}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          backgroundColor: colorName,
        ),
        onPressed: () async {
          final player = AudioPlayer();
          await player.play(AssetSource('note$num.wav'));
        },
        child: Text(' '),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple.shade50,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playSound(colorName: Colors.black12, num: 1),
              playSound(colorName: Colors.white54, num: 2),
              playSound(colorName: Colors.black12, num: 3),
              playSound(colorName: Colors.white54, num: 4),
              playSound(colorName: Colors.black12, num: 5),
              playSound(colorName: Colors.white54, num: 6),
              playSound(colorName: Colors.black12, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}

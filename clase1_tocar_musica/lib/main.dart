import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(Player());

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTextButton(1,Colors.yellow),
              buildTextButton(2,Colors.green),
              buildTextButton(3,Colors.blue),
              buildTextButton(4,Colors.orange),
              buildTextButton(5,Colors.red),
              buildTextButton(6,Colors.purple),
              buildTextButton(7,Colors.pink),
            ],
          )
        ),
      ),
    );
  }

  void PlayTone(int tone){
    final player = AudioPlayer();
    player.play(AssetSource('note$tone.wav'));
  }
  Expanded buildTextButton(int tone, Color color) {
    return Expanded(
      child: TextButton(
                  onPressed:(){
                      PlayTone(tone);
                  },
                  child: Text(" "),
                style: TextButton.styleFrom(
                  backgroundColor: color,
                ),
              ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class TuneScreen extends StatelessWidget {
  TuneScreen({Key? key}) : super(key: key);

  List<Color> colors = [
    Color(0xffF44336),
    Color(0xffF89800),
    Color(0xffFEEB3B),
    Color(0xff4CAF50),
    Color(0xff2F9688),
    Color(0xff2896F3),
    Color(0xff9C27B0),
  ];

  List<String> sounds = [
    'note1.wav',
    'note2.wav',
    'note3.wav',
    'note4.wav',
    'note5.wav',
    'note6.wav',
    'note7.wav',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 7; i++)
            GestureDetector(
               onTap: (){
                final player = AudioPlayer();
                player.play(AssetSource(sounds[i]));
                
              },
            
              child: Container(
                height: 117.2,
                color: colors[i],
              ),
            ),
             
        ],
      ),
    );
  }
}

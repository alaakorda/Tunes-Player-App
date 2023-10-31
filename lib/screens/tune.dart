import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tuneplayer/models/tune_model.dart';
import 'package:tuneplayer/widgets/tune_item.dart';

class TuneScreen extends StatelessWidget {
  TuneScreen({Key? key}) : super(key: key);

  List<TuneModel> Tune = [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.orange, sound: 'note2.wav'),
    TuneModel(color: Colors.yellow, sound: 'note3.wav'),
    TuneModel(color: Colors.green, sound: 'note4.wav'),
    TuneModel(color: Colors.teal, sound: 'note5.wav'),
    TuneModel(color: Colors.blue, sound: 'note6.wav'),
    TuneModel(color: Colors.purple, sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0Xff253238),
      ),
      body: Column(
        children: Tune.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }
}

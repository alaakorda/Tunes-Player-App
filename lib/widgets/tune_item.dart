import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tuneplayer/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  TuneItem({Key? key, required this.tune}) : super(key: key);
  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tune.playSound();
      },
      child: Expanded(
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player/model/tune_model.dart';
class TuneItem extends StatelessWidget {
  TuneItem({super.key, required this.tuneModel});
  final player = AudioPlayer();
  final TuneModel tuneModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          color: tuneModel.color,
        ),
        onTap: () async {
          await player.play(AssetSource(tuneModel.sound));
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tunes_player/model/tune_model.dart';
import 'package:tunes_player/widget/tune_item.dart';
class HomeView extends StatelessWidget {
   const HomeView({super.key});
  final List<TuneModel> tunes= const[
    TuneModel(color: Colors.red, sound: "note1.wav"),
    TuneModel(color: Colors.orange, sound: "note2.wav"),
    TuneModel(color: Colors.yellow, sound: "note3.wav"),
    TuneModel(color: Colors.green, sound: "note4.wav"),
    TuneModel(color: Colors.teal, sound: "note5.wav"),
    TuneModel(color: Colors.lightBlue, sound: "note6.wav"),
    TuneModel(color: Colors.purpleAccent, sound: "note7.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Tune",
          style: TextStyle(fontSize: 34),
        ),
      ),
      body: Column(
        children:
        tunes.map((e) => TuneItem(tuneModel: e)).toList(),
      ),
    );
  }
}
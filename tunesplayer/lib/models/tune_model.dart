import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  // attributes
  final Color color;
  final String sound;
  // constructor
  const TuneModel({required this.color, required this.sound});
  // methods
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}

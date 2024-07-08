import 'package:flutter/material.dart';
import 'package:tunesplayer/models/tune_model.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.tune,
  });
  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}

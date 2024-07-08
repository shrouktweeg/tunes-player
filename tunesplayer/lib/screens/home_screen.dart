import 'package:flutter/material.dart';
import 'package:tunesplayer/components/color.dart';
import 'package:tunesplayer/models/tune_model.dart';

class TuneScreen extends StatelessWidget {
  const TuneScreen({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0XFFFF3F39), sound: 'note1.wav'),
    TuneModel(color: Color(0XFFFD982B), sound: 'note2.wav'),
    TuneModel(color: Color(0XFFFDEB57), sound: 'note3.wav'),
    TuneModel(color: Color(0XFFF33AF57), sound: 'note4.wav'),
    TuneModel(color: Color(0XFFF009587), sound: 'note5.wav'),
    TuneModel(color: Color(0XFFF0097ED), sound: 'note6.wav'),
    TuneModel(color: Color(0XFFA227AC), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'Flutter Tune',
          ),
          centerTitle: true,
          backgroundColor: const Color(0XFF243139),
        ),
        body: Column(
          children:
              tunes.map((e) => Category( tune: e,)).toList(),
        ));
  }
}

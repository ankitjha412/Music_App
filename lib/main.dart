import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void plysound(int sound) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/note$sound.wav"),
      autoStart: true,
    );
  }

  Expanded buildkey(int sound, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          plysound(sound);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(1, Colors.red),
              buildkey(2, Colors.orange),
              buildkey(3, Colors.yellow),
              buildkey(4, Colors.green),
              buildkey(5, Colors.teal),
              buildkey(6, Colors.blue),
              buildkey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void play(int n){
      final player = AudioCache();
      player.play('note$n.wav');
    }
    Expanded buildkey(Color color ,int m){
      return Expanded(
        child: FlatButton(
          color: color,

          onPressed: (){
            play(m);

          },
          child: null,

        ),
      );


    }
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children: [
              buildkey(Colors.blue , 1),
              buildkey(Colors.red , 2),
              buildkey(Colors.green , 3),
              buildkey(Colors.grey , 4),
              buildkey(Colors.yellow , 5),
              buildkey(Colors.white , 6),
              buildkey(Colors.orange , 7),

            ],


          ),
        ),
      ),
    );
  }
}

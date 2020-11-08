import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void play(int note){
    final player1 = AudioCache();
    player1.play('note$note.wav');
  }

   Expanded tablet(int note, {Color color}){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          play(note);
        },
        color: color,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              tablet(1,color:Colors.red),
              tablet(2,color:Colors.orange),
              tablet(3,color:Colors.yellow),
              tablet(4,color:Colors.green),
              tablet(5,color:Colors.teal),
              tablet(6,color:Colors.blue),
              tablet(7,color:Colors.purple),
            ]
          ),
        ),
      ),
    );
  }
}

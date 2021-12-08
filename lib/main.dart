import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void sound(int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }
  Expanded buildfun({required Color color, required int number}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          sound(number);
        },
        child: const Text(''),
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
            children: <Widget>[
              buildfun(color: Colors.red, number: 1),
              buildfun(color: Colors.orange, number: 2),
              buildfun(color: Colors.yellow, number: 3),
              buildfun(color: Colors.green, number: 4),
              buildfun(color: Colors.blue, number: 5),
              buildfun(color: Colors.indigo, number: 6),
              buildfun(color: Colors.deepPurple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}



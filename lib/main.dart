import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded buildkey({int s=0, Color clr=Colors.white}){
    return Expanded(
      flex: 1,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: clr,
          backgroundColor: clr,
        ),
        onPressed: (){
          final player = AudioPlayer();
          player.play(AssetSource('note$s.wav'));
        },
        child: Text(
            ""
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget>[
              buildkey(s: 1, clr: Colors.purpleAccent),
              buildkey(s: 2, clr: Colors.indigoAccent),
              buildkey(s: 3, clr: Colors.blueAccent),
              buildkey(s: 4, clr: Colors.greenAccent),
              buildkey(s: 5, clr: Colors.yellowAccent),
              buildkey(s: 6, clr: Colors.orangeAccent),
              buildkey(s: 7, clr: Colors.redAccent),
            ],
          ),
        ),
      ),
    );
  }
}

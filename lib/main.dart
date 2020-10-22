import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() {
  return runApp(
      MaterialApp(
        debugShowCheckedModeBanner:false,
        home: new MyHomePage(),
      ),
    );
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  Expanded buildkey(String sound,Color col){
   return Expanded(
       child:Container(
   color:col,
   width:600.0,
      child: FlatButton(
        onPressed: (){
          final player=AudioCache();
          player.play('note$sound.wav');
        },),
    ),
   );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     appBar: AppBar(
      backgroundColor: Colors.teal,
       title: Center(
         child: Text('Xylophone',
         style: TextStyle(
           fontWeight: FontWeight.bold,
            color: Colors.white,
           fontSize: 20.0
         ),
         ),
       ),
     ),
      body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            buildkey('1',const Color(0xFF42A5F5)),
            buildkey('2',const Color(0xFF00597B)),
            buildkey('3',const Color(0xFFFFD740)),
            buildkey('4',const Color(0xFFF44336)),
            buildkey('5',const Color(0xFFD500F9)),
            buildkey('6',const Color(0xFF76FF03)),
            buildkey('7',const Color(0xFF18FFFF)),
          ],
        ),
    );
  }
}
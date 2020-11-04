import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MagicBall(),
  );
}

class MagicBall extends StatefulWidget {

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;

  int Randball(){
    setState(() {
    ballNumber = Random().nextInt(5)+ 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.indigo.shade700,
          ),
          body: Center(
            child: FlatButton(
              onPressed: (){
              Randball();
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ),
      ),
    );
  }
}

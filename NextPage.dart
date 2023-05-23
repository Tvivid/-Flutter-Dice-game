import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice=1;
  int rightDice=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Dice game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Image.asset('assets/dice$leftDice.jpg',width: 200, height: 200,)),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(child: Image.asset('assets/dice$rightDice.jpg',width: 200, height: 200,)),
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            // ignore: deprecated_member_use
            ButtonTheme(
              minWidth: 100.0,
              height: 60.0,
              child: RaisedButton(
                  child: Icon(Icons.play_arrow,
                    color: Colors.white,
                    size: 50.0,
                  ),
                  color: Colors.orangeAccent,
                  onPressed: (){
                    setState(() {
                      leftDice = Random().nextInt(6)+1;
                      rightDice = Random().nextInt(6)+1;
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }
}



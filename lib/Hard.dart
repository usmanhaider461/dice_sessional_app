import 'dart:math';
import 'package:flutter/material.dart';
class HardGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Center(child: Text('Hard Level')),
        backgroundColor: Colors.indigo,
      ),
      body: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
// This widget is the root of your application
  int leftDiceNumber = 6;
  int rightDiceNumber = 6;
  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset('assets/dice$leftDiceNumber.png')),
          ),

        ],
      ),
    );
  }
}

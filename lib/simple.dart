import 'dart:math';
import 'package:flutter/material.dart';
class SimpleGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        title: Center(child: Text('Dice g Dice')),
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
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: FlatButton(
                    onPressed: () {
                      changeDice();
                    },
                    child: Image.asset('assets/dice$leftDiceNumber.png')),
              ),
              Expanded(
                child: FlatButton(
                    onPressed: () {
                      changeDice();
                    },
                    child: Image.asset('assets/dice$rightDiceNumber.png')),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              // Execute when pressed
              onPressed: () {
                // use the navigator to goto a named route
                Navigator.of(context).pushNamed('/');
              },
              // Setting the size of icon
              iconSize: 80.0,
            ),
          )
        ],
      ),
    );
  }
}

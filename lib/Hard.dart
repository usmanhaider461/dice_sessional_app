import 'dart:math';
import 'package:flutter/material.dart';
import 'Result.dart';

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
  int score = 0;
  int counter = 0;
  int opt1;
  int opt2;
  int opt3;
  int opt4;
  void changeDice() {
    setState(() {
      if (counter < 5) {
        leftDiceNumber = Random().nextInt(6) + 1;
        score += leftDiceNumber;
        counter++;
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ResultPage()));
      }
    });
  }

  Widget showScore() {
    return Text("$score");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset('assets/dice$leftDiceNumber.png')),
          ),
          Row(
            children: [
              FlatButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Text(
                    'Option 1',
                    style: TextStyle(fontSize: 10.0, color: Colors.blue),
                  )),
              FlatButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Text(
                    'Option 2',
                    style: TextStyle(fontSize: 10.0, color: Colors.blue),
                  )),FlatButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Text(
                    'Option 3',
                    style: TextStyle(fontSize: 10.0, color: Colors.blue),
                  )),FlatButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Text(
                    'Option 4',
                    style: TextStyle(fontSize: 10.0, color: Colors.blue),
                  )),
            ],
          )
        ],
      ),
    );
  }
}

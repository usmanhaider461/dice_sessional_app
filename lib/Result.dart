import 'package:flutter/material.dart';
import 'Hard.dart';

class ResultPage extends StatelessWidget {
  static const String routeName = "/about";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        // Title
        title: Text("Result"),
        // App Bar background color
        backgroundColor: Colors.blue,
      ),
      // Body
      body: Container(
        // Center the content
        child: Center(
          child: Column(
            // Center content in the column
            mainAxisAlignment: MainAxisAlignment.center,
            // add children to the column
            children: <Widget>[
              Image.asset('assets/app.png'),
              Text('Your Result is Here',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                  )),
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                // Execute when pressed
                onPressed: () {
                  // use the navigator to goto a named route
                  Navigator.of(context).pushNamed('/');
                },
                // Setting the size of icon
                iconSize: 80.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

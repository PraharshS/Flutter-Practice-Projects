import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Center(
              child: Text(
                "Ask me Anything",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            backgroundColor: Colors.black,
          ),
          body: BallApp(),
        ),
      ),
    );

class BallApp extends StatefulWidget {
  @override
  _BallAppState createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {
  int currBallNumber = 1;
  void changePic() {
    setState(() {
      currBallNumber = Random().nextInt(5) + 1;
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
                  changePic();
                },
                child: Image.asset('images/ball$currBallNumber.png'),
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent),
          )
        ],
      ),
    );
  }
}

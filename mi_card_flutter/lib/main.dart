import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 100,
            // backgroundColor: Colors.red,
            backgroundImage: AssetImage('images/profile.jpg'),
          ),
          Text(
            'Praharsh Singh',
            style: TextStyle(
              fontSize: 30,
              letterSpacing: 1.8,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Source Sans',
              color: Colors.teal.shade100,
              letterSpacing: 2.2,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
            width : 170,
            child : Divider(
              color : Colors.teal.shade100,

            ),
          ),
          Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "6263271314",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      letterSpacing: 2.2,
                      fontFamily: "Source Sans",
                      fontSize: 20,
                    ),
                  ))),
          Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  "praharsh535@gmail.com",
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.1,
                    fontFamily: "Source Sans",
                    color: Colors.teal.shade900,
                  ),
                ),
              )),
        ],
      )),
    ));
  }
}

// Row(
// children: <Widget>[
// Icon(
// Icons.phone,
// size: 20,
// color: Colors.teal,
// ),
// SizedBox(
// width: 10,
// ),

// ],
// ),

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent[200],
        body: SafeArea(
            child: Column(
          children: <Widget>[
            Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Text('Container 1')),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
          ],
        )),
      ),
    );
  }
}

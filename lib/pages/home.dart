import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello World',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blueAccent,
                decoration: TextDecoration.none
              ),
            )
          ],
        );
  }
}
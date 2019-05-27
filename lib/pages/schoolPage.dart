import 'package:flutter/material.dart';

class SchoolPage extends StatefulWidget {
  SchoolPage({Key key}) : super(key: key);

  _SchoolPageState createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
         Text(
           'Visite o :',
           textAlign: TextAlign.center,
          ),
         RaisedButton(
           child: Text(
             'google.com',
             textAlign: TextAlign.center
          ),
         )
       ],
    );
  }
}
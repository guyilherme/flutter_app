import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SchoolPage extends StatefulWidget {

  SchoolPage({Key key}) : super(key: key);

  _SchoolPageState createState() => _SchoolPageState();

  String tittle() {
    return "School";
  }
}

class _SchoolPageState extends State<SchoolPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Text(
           'Visite o :',
           textAlign: TextAlign.center,
           style: Theme.of(context).textTheme.display3,
          ),
         RaisedButton(
           child: Text(
             'google.com',
             textAlign: TextAlign.center
          ),
          onPressed: () {
            launch('http://google.com');
          },
         )
       ],
    );
  }
}
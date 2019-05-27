import 'package:flutter/material.dart';
import 'template.dart';

void main() => runApp(GloboFM());

class GloboFM extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: new Template()
    );
  }
}
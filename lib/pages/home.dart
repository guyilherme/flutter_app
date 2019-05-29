import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();

  String tittle() {
    return "Home";
  }
}

class _HomeState extends State<Home> {
  int _cursos = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/1.png', height: 100.0,),
            Text(
              'Hello World',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.display2
            ),
            Text(
              'Você pressionou $_cursos vezes o botão',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.display1.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w300
              )
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: FloatingActionButton(
              child: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    _cursos++; 
                  });
                },
              ),
            ),
          ],
        );
  }
}
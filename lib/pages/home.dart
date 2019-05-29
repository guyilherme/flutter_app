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
  int _selectedImage = 0;
  var _images = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(_images[_selectedImage], height: 100.0,),
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
                    
                    int selectedImage = _cursos ~/ 2;
                    if (selectedImage <= 4) {
                      _selectedImage = selectedImage;
                    } else if (selectedImage > 4) {
                      _selectedImage = 5;
                    }
                  });
                },
              ),
            ),
          ],
        );
  }
}
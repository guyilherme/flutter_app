import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/schoolPage.dart';

class Template extends StatefulWidget {
  Template({Key key}) : super(key: key);

  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  var homePage = new Home();
  var schoolPage = new SchoolPage();
  var _selectedPages = 0;
  var _pages;

  @override
  Widget build(BuildContext context) {
    _pages = [
      homePage,
      schoolPage
    ];
    return Scaffold(
      appBar: AppBar(
        title: new Center(
          child: Text(
            _pages[_selectedPages].tittle()
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School')
          )
        ],
        fixedColor: Colors.black,
        currentIndex: _selectedPages,
        onTap: (int index){
          setState(() {
           _selectedPages = index; 
          });
        },
      ),
    );
  }

  _body() {
    return Container(
      constraints: BoxConstraints.expand(),
      child: _pages[_selectedPages],
    );
  }
}
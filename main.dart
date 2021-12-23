import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import 'MySetting.dart';

void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<MyApp> {
  int _selectedIndex = 0;
  List <Widget>list = [
    MyHomePage(),
    MySetting(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: /*list[_selectedIndex]*/MyHomePage(),
        // bottomNavigationBar: BottomNavigationBar(
        //   items:  [
        //     BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Home')),
        //     BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('MySetting')),
        //   ],
        //   currentIndex: _selectedIndex,
        //   onTap: _onItemTapped,
        // ),
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
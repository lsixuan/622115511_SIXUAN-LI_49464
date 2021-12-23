import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailsPage.dart';

class MySetting extends StatefulWidget {
  final String title = "My Friends";

  @override
  _MySettingState createState() => _MySettingState();
}

class _MySettingState extends State<MySetting> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar:  AppBar(
        actions: [Icon(Icons.search_outlined),Icon(Icons.add),SizedBox(width: 15,)],
        elevation: 0,
        backgroundColor: Colors.blueGrey,
        title: Text(
            "MySetting",
            overflow: TextOverflow.ellipsis
        ),
        centerTitle: true,
      ),
    );
  }
}

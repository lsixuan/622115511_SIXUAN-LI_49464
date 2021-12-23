import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  String title;
  String content;
  String imageUrl;
  String detail;

  DetailsPage(this.title, this.content, this.imageUrl, this.detail);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the DetailsPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Details"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          children: <Widget>[
            Text(widget.title),
            Text(widget.content),
            Image.network(widget.imageUrl),
            Text(widget.detail)
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailsPage.dart';

class MyHomePage extends StatefulWidget {
  final String title = "Computer Knowledge";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: FutureBuilder(builder:(context,spndata){
          var data =json.decode(spndata.data.toString());
          return ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return MyBox(data[index]["title"],data[index]["subtitle"],data[index]["image_url"]);
              },
              separatorBuilder: (context, index) {
                return Container(
                  height: 0,
                );
              },
              itemCount: data.length);
        },future: DefaultAssetBundle.of(context).loadString("assets/data.json")),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        // child: ListView(
        //   children: <Widget>[
        //     MyBox("What is Computer?","Computer is things to calculate and for others works","https://tenfei01.cfp.cn/creative/vcg/800/new/VCG211229523788.jpg"),
        //     SizedBox(
        //       height: 15,
        //     ),
        //     MyBox("What is Flutter?","Flutter is a tool to create mobile Application","https://alifei02.cfp.cn/creative/vcg/800/new/VCG211343122833.jpg"),
        //     SizedBox(
        //       height: 15,
        //     ),
        //     MyBox("What is Dart?","Dart is Language used in Flutter","https://tenfei01.cfp.cn/creative/vcg/800/new/VCG211237565991.jpg"),
        //     SizedBox(
        //       height: 15,
        //     ),
        //   ],
        // ),
      ),
    );
  }

  Widget MyBox(String title, String content, String imageUrl) {
    return Container(
      height: 150,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(left: 20,top: 20,right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            content,
            style: TextStyle(
                color: Colors.white, fontSize: 15),
          ),
          TextButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(),
                ));
          }, child: Text("read more")),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken)),
      ),
    );
  }
}

/*
Created: 24-06-19
Edited: 28-06-19
Description: Homepage for Rhine. The page the app routes to upon accessing the app. Displays promotion carousell and recent discounts
*/

import 'package:flutter/material.dart';

class DiscoveryPage extends StatefulWidget {
  DiscoveryPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _DiscoveryPageState createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: new AppBar(title: new Text("Discovery")),
      bottomNavigationBar: new BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/chatScreen');
          }, 
            icon: Icon(Icons.chat_bubble),
            color: Colors.lightBlueAccent[400],
            
            ),
            
          IconButton(onPressed: () {}, 
          icon: Icon(Icons.location_searching),
          color: Colors.lightBlueAccent[400],
          
          ),
          Container(
            height: 10,
            width: 20,
          ),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/membershipPage');
          }, icon: Icon(Icons.inbox),
             color: Colors.lightBlueAccent[400],
             
             ),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/profile');
          }, icon: Icon(Icons.account_circle),
             color: Colors.lightBlueAccent[400],
             
             ),
          SizedBox(),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        child: Icon(Icons.add), onPressed: (){},
        ),
      floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
    );
  }
}
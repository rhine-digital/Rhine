/*
Created: 24-06-19
Description: Membership page for Rhine. Displays membership info for respective merchants
*/

import 'package:flutter/material.dart';

class MembershipPage extends StatefulWidget {
  MembershipPage({Key key, this.title}) : super(key : key);


  final String title;
  @override
  _MembershipPageState createState() => _MembershipPageState();
}

class _MembershipPageState extends State<MembershipPage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: new AppBar(title: new Text("Chat")),
      bottomNavigationBar: new BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble),),
          IconButton(onPressed: () {}, icon: Icon(Icons.location_searching),),
          IconButton(onPressed: () {}, icon: Icon(Icons.home),),
          IconButton(onPressed: () {}, icon: Icon(Icons.inbox),),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle),),
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
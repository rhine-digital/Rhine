/*
Created: 24-06-19
Edited: 17-07-19
Description: Membership page for Rhine. Displays membership info for respective merchants
*/

import 'package:flutter/material.dart';
import '../widgets/unicorn.dart';
import '../resources/app-palette.dart';

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
      appBar: new AppBar(title: new Text("Membership")),
      bottomNavigationBar: new BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/chatScreen');
              }, 
              icon: Icon(Icons.chat_bubble),
              color: Palette.buttonColor,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/discovery');
              }, 
              icon: Icon(Icons.location_searching),
              color: Palette.buttonColor,

            ),
            Container(
              height: 10,
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.inbox),
              color: Palette.buttonColor,
                
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              }, 
              icon: Icon(Icons.account_circle),
              color: Palette.buttonColor,
            ),
            SizedBox(),
          ],
        ),
      ),
      floatingActionButton: new Unicorn(),
      floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
    );
  }
}
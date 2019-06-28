/*
Created: 28-06-19
Edited: 28-06-19
Description: Profile page to display user settings and other user-related information
*/

import 'package:flutter/material.dart';


class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Profile")),
      bottomNavigationBar: new BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/chatScreen');
          }, icon: Icon(Icons.chat_bubble),),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/discovery');
          }, icon: Icon(Icons.location_searching),),
          Container(
            height: 10,
            width: 20,
          ),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/membershipPage');
          }, icon: Icon(Icons.inbox),),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle),),
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
/*
Created: 19-07-19
Edited: 19-07-19
Description: Bottom nav bar of the app
*/

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../resources/app-palette.dart';

class BottomApp extends StatelessWidget {

  //Represent various pages. 
  // 1 - Chat, 2 - Discovery, 3 - Membership, 4 - Profile
  int pageNum;

  BottomApp(option) {
    pageNum = option;
  }

  @override
  Widget build(BuildContext context) {
    
    return new BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(),
            IconButton(
              onPressed: () {
                if(pageNum != 1) {
                  Navigator.pushNamed(context, '/chatScreen');
                }
              },
              icon: Icon(Icons.chat_bubble),
              color: Palette.buttonColor,
            ),
            IconButton(
              onPressed: () {
                if(pageNum != 2) {
                  Navigator.pushNamed(context, '/discovery');
                }
              },
              icon: Icon(Icons.location_searching),
              color: Palette.buttonColor,
            ),
            Container(
              height: 10,
              width: 20,
            ),
            IconButton(
              onPressed: () {
                if(pageNum != 3) {
                  Navigator.pushNamed(context, '/membershipPage');
                }
              },
              icon: Icon(Icons.inbox),
              color: Palette.buttonColor,
            ),
            IconButton(
              onPressed: () {
                if(pageNum != 4) {
                  Navigator.pushNamed(context, '/profile');
                }
              },
              icon: Icon(Icons.account_circle),
              color: Palette.buttonColor,
            ),
            SizedBox(),
          ],
        ),
      );
  }
}
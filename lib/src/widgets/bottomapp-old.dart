/*
Created: 19-07-19
Edited: 05-08-19
Description: Bottom nav bar of the app - Deprecated
*/

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../resources/app-palette.dart';
import '../widgets/customflatbutton.dart';

class BottomApp extends StatelessWidget {
  BottomApp(this.pageNum);

  //Represent various pages. 
  // 1 - Chat, 2 - Discovery, 3 - Membership, 4 - Profile
  final int pageNum;


  @override
  Widget build(BuildContext context) {
    
    return new Container(
      //height: 60,
      padding: EdgeInsets.only(top: 5),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(),
            CustomFlatButton(
              label: "Chat",
              textColor: Palette.buttonColor,
              icon: Icons.chat_bubble,
              iconColor: Palette.buttonColor,
              onTap: () {
                if(pageNum != 1) {
                  Navigator.pushNamed(context, '/chatScreen');
                }
              },
              
            ),
            CustomFlatButton(
              label: "Discovery",
              textColor: Palette.buttonColor,
              icon: Icons.location_searching,
              iconColor: Palette.buttonColor,
              onTap: () {
                if(pageNum != 2) {
                  Navigator.pushNamed(context, '/discovery');
                }
              },
              
            ),
            Container(
              height: 10,
              width: 35,
            ),
            CustomFlatButton(
              label: "Member",
              textColor: Palette.buttonColor,
              icon: Icons.inbox,
              iconColor: Palette.buttonColor,
              onTap: () {
                if(pageNum != 3) {
                  Navigator.pushNamed(context, '/membershipPage');
                }
              }
            ),
            CustomFlatButton(
              label: "Profile",
              textColor: Palette.buttonColor,
              icon: Icons.account_circle,
              iconColor: Palette.buttonColor,
              onTap: () {
                if(pageNum != 4) {
                  Navigator.pushNamed(context, '/profile');
                }
              }
            ),
            SizedBox(),
          ],
        ),
      )
    );
  }
}
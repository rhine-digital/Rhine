/*
Created: 28-06-19
Edited: 17-07-19
Description: Profile page to display user settings and other user-related information
*/

import 'package:flutter/material.dart';
/*import 'package:qr_scanner_generator/scan.dart';
import 'package:qr_scanner_generator/generate.dart';*/
import 'package:flutter/rendering.dart';
import '../resources/app-palette.dart';
import '../widgets/unicorn.dart';

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
              onPressed: () {
                Navigator.pushNamed(context, '/membershipPage');
              },
              icon: Icon(Icons.inbox),
              color: Palette.buttonColor,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle),
              color: Palette.buttonColor,
            ),
            SizedBox(),
          ],
        ),
      ),
      //------------------Floating Action Button---------------------
      floatingActionButton: new Unicorn(),
      /*child: Icon(Icons.add),
      
      onPressed: () {
        
      }, */
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
       
} 


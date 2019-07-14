/*
Created: 28-06-19
Edited: 28-06-19
Description: Profile page to display user settings and other user-related information
*/

import 'package:flutter/material.dart';
import 'package:unicorndial/unicorndial.dart';
/*import 'package:qr_scanner_generator/scan.dart';
import 'package:qr_scanner_generator/generate.dart';*/
import 'package:flutter/rendering.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var childButtons = List<UnicornButton>();

    childButtons.add(UnicornButton(
      hasLabel: true,
      labelText: "Scan QR",
      currentButton: FloatingActionButton(
        heroTag: "scanQR",
        backgroundColor: Colors.red,
        mini: true,
        child: Icon(Icons.linked_camera),
        onPressed: () {},
      )));

    childButtons.add(UnicornButton(
      hasLabel: true,
      labelText: "My QR",
      currentButton: FloatingActionButton(
        heroTag: "myQR",
        backgroundColor: Colors.green,
        mini: true,
        child: Icon(Icons.brush),
        onPressed: () {},
      )));

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
              color: Colors.lightBlueAccent[400],
              
              
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/discovery');
              },
              icon: Icon(Icons.location_searching),
              color: Colors.lightBlueAccent[400],
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
              color: Colors.lightBlueAccent[400],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle),
              color: Colors.lightBlueAccent[400],
            ),
            SizedBox(),
          ],
        ),
      ),
      //------------------Floating Action Button---------------------
      floatingActionButton: Container(
        width: 70.0,
        height: 80.0,
        child: UnicornDialer(
            hasNotch: true,
            hasBackground: false,
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
            parentButtonBackground: Colors.blue,
            orientation: UnicornOrientation.VERTICAL,
            parentButton: Icon(Icons.add, color: Colors.black),
            childButtons: childButtons),
      ),
      /*child: Icon(Icons.add),
      
      onPressed: () {
        
      }, */
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
       
} 


/*
Created: 28-06-19
Edited: 28-06-19
Description: Profile page to display user settings and other user-related information
*/

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
/*import 'package:qr_scanner_generator/scan.dart';
import 'package:qr_scanner_generator/generate.dart';*/
import 'package:flutter/rendering.dart';

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
      
      floatingActionButton: SpeedDial(
       marginRight: 170,
       marginBottom: 70,
       child: Icon(Icons.add),
       
       animatedIcon: AnimatedIcons.add_event,
       animatedIconTheme: IconThemeData(size: 18.0),
       

       
       closeManually: false,
       curve: Curves.bounceIn,
       overlayColor: Colors.black87,
       onOpen: () => print('OPENING DIAL'),
          onClose: () => print('DIAL CLOSED'),
          tooltip: 'Speed Dial',
          heroTag: 'speed-dial-hero-tag',
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 6.0,
          shape: CircleBorder(),
          children: [
            SpeedDialChild
            (
              child: Icon(Icons.linked_camera),
              backgroundColor: Colors.red,
              label: 'Scan QR',
              labelStyle: TextStyle(fontSize: 18.0),
              
              onTap: ()
               {
                 /* Launch Native Camera with QR Scan*/
               }
            ),
            SpeedDialChild(
              child: Icon(Icons.brush),
              backgroundColor: Colors.blue,
              label: 'My QR',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: ()
                {
                  /* Generates UserID QR Code*/
                },
            ),
          ],
        ),


        /*child: Icon(Icons.add),
        
        onPressed: () {
          
        }, */
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      

      
    );
  }
       
} 


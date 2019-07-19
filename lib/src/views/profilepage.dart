/*
Created: 28-06-19
Edited: 17-07-19
Description: Profile page to display user settings and other user-related information
*/

import 'package:flutter/material.dart';
/*import 'package:qr_scanner_generator/scan.dart';
import 'package:qr_scanner_generator/generate.dart';*/
import '../widgets/bottomapp.dart';
import '../widgets/unicorn.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(title: new Text("Profile")),
      bottomNavigationBar: new BottomApp(4),
      //------------------Floating Action Button---------------------
      floatingActionButton: new Unicorn(),
      /*child: Icon(Icons.add),
      
      onPressed: () {
        
      }, */
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
       
} 


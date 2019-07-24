/*
Created: 28-06-19
Edited: 23-07-19
Description: Profile page to display user settings and other user-related information
*/

import 'package:flutter/material.dart';
/*import 'package:qr_scanner_generator/scan.dart';
import 'package:qr_scanner_generator/generate.dart';*/
import '../widgets/bottomapp.dart';
import '../widgets/unicorn.dart';
import '../resources/app-palette.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: new AppBar(
        title: new Text("Profile"),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: <Widget>[
          _buildCoverImage(screenSize),
          SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox( height: screenSize.height/15, ),
                _buildProfileImage(),
                _buildNavBar(screenSize),
                //SizedBox( height: screenSize.height/12),
              ],
            )
          ),
          
        ],
      ),
      bottomNavigationBar: new BottomApp(4),
      //------------------Floating Action Button---------------------
      floatingActionButton: new Unicorn(),
      /*child: Icon(Icons.add),
      
      onPressed: () {
        
      }, */
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildCoverImage(Size screenSize) {
    return Container(
      height: screenSize.height / 3,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/cover.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    return Center (
      child: Container (
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/profile.jpg'),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(80.0),
          border: Border.all(
            color: Colors.white,
            width: 4,
          )
        ),
      ),
    );
  }

  Widget _buildNavBar(Size screenSize) {
    return Container(
      padding: EdgeInsets.only( top: screenSize.height / 15 ),
      child: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: (){
                //Do something
              },
              icon: Icon(Icons.loyalty),
              color: Palette.buttonColor,
            ),
            IconButton(
              onPressed: (){
                //Do something
              },
              icon: Icon(Icons.fiber_smart_record),
              color: Palette.buttonColor,
            ),

          ],
        )
      ),
    );
  }
} 
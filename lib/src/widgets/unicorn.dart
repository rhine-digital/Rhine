/*
Created: 17-07-19
Edited: 05-08-19
Description: Contains unicorn dial button
*/

import 'package:flutter/material.dart';
import 'package:unicorndial/unicorndial.dart';
import '../resources/app-palette.dart';

class Unicorn extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext build){
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

      return Container(
        width: 70.0,
        height: 80.0,
        child: UnicornDialer(
          //parentHeroTag: "Home",
          hasNotch: true,
          hasBackground: false,
          backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
          parentButtonBackground: Palette.buttonColor,
          orientation: UnicornOrientation.VERTICAL,
          parentButton: Icon(Icons.add, color: Colors.black),
          childButtons: childButtons,
          animationDuration: 180
        ),
      );

  }
}
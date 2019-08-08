/*
Created: 24-06-19
Edited: 29-06-19
Description: Stores app-wide information
*/

import 'package:flutter/material.dart';
import 'views/homepage.dart';
/*import '../src/resources/app-palette.dart'; */


class RhineApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rhine Demo',
      theme: ThemeData(
        
        
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Rhine Demo HomePage'),
    );
  }
}

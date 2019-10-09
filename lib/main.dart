/*
Created: 24-06-19
Description: Runs application
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rhine/src/app.dart';
import 'package:rhine/src/app.dart';



void main() async{
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_)
   {
    runApp(RhineApp());
   
   });
}



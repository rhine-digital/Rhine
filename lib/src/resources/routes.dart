/*
Created: 24-06-19
Description: Stores routing information
*/

import 'package:flutter/material.dart';
import '../views/homepage.dart';
import '../views/membershippage.dart';
import '../views/chatscreen.dart';

class RouteStore {

  //Initial route for named routing
  static String initialRoute = 'homepage';

  static var routes = {
    'homepage' : (BuildContext context) => MyHomePage(),
    'membershipPage' : (BuildContext context) => MembershipPage(),
    'chatScreen' : (BuildContext context) => ChatScreen(),
  };
}
/*
Created: 24-06-19
Edited: 28-06-19
Description: Stores routing information
*/

import 'package:flutter/material.dart';
import '../views/discoverypage.dart';
import '../views/membershippage.dart';
import '../views/chatscreen.dart';
import '../views/profilepage.dart';

class RouteStore {

  //Initial route for named routing
  static String initialRoute = '/chatScreen';

  static var routes = {
    '/discovery' : (BuildContext context) => DiscoveryPage(),
    '/membershipPage' : (BuildContext context) => MembershipPage(),
    '/chatScreen' : (BuildContext context) => ChatScreen(),
    '/profile' : (BuildContext context) => ProfilePage(),
  };
}
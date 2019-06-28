/*
Created: 24-06-19
Edited: 28-06-19
Description: Stores app-wide information
*/

import 'package:flutter/material.dart';
import '../src/views/chatscreen.dart';
import '../src/resources/routes.dart';
import '../src/resources/app-palette.dart';
import '../src/resources/historylimit.dart';

class RhineApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rhine Demo',
      theme: ThemeData(
        
        
        primarySwatch: Colors.blue,
      ),
      home: ChatScreen(title: 'Rhine Demo HomePage'),
      initialRoute: RouteStore.initialRoute,
      routes: RouteStore.routes,
      navigatorObservers: [
        HistoryLimit(5),
      ],
    );
  }
}

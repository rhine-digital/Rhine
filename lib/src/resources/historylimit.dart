/*
Created: 24-06-19
Edited: 28-06-19
Description: Controls the history limit of the stack of routes
*/

import 'package:flutter/material.dart';

class HistoryLimit extends NavigatorObserver {
  final int limit;
  final history = <Route>[];

  HistoryLimit([this.limit = 10]);


  @override
  void didReplace({Route<dynamic> newRoute, Route<dynamic> oldRoute}) {
    final index = history.indexOf(oldRoute);
    history[index] = newRoute;
  }


  @override
  void didPush(Route route, Route previousRoute) {
    history.add(route);
    if (history.length > limit) {
      //Delay remove route to allow current operation to complete and prevent !_debugLocked is true
      Future.delayed(Duration.zero, () {
        this.navigator.removeRoute(history[1]);
      });
    }
  }

  @override
  void didPop(Route route, Route previousRoute) {
    history.remove(route);
  }

  @override
  void didRemove(Route route, Route previousRoute) {
    history.remove(route);
  }
}
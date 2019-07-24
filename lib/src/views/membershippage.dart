/*
Created: 24-06-19
Edited: 17-07-19
Description: Membership page for Rhine. Displays membership info for respective merchants
*/

import 'package:flutter/material.dart';
import '../widgets/unicorn.dart';
import '../widgets/bottomapp.dart';


class MembershipPage extends StatefulWidget {
  MembershipPage({Key key, this.title}) : super(key : key);


  final String title;
  @override
  _MembershipPageState createState() => _MembershipPageState();
  
}

class _MembershipPageState extends State<MembershipPage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Membership"),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: new BottomApp(3),
      floatingActionButton: new Unicorn(),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      
    

    );

  }
  
}
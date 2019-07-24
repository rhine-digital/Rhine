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
<<<<<<< HEAD
      appBar: new AppBar(title: new Text("Membership")),
      automaticallyImplyLeading: false,
      body: SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>
      
      [Container(
        color: Colors.blueAccent,
        alignment: Alignment.bottomRight,
        height: 200,
        child: Text("this.alignment"),
        
      ),
      Container(
        constraints: BoxConstraints.expand(height: 100.0),
        margin: EdgeInsets.all(10), //Border to follow Rhine Design Language
        padding: EdgeInsets.all(10),
        decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
        Radius.circular(10.0),
        ),
        ),
          color: Colors.redAccent),
          child: Text("decoration: ShapeDecoration"),
        )
      ],
      
      )
      
      ),

=======
      appBar: new AppBar(
        title: new Text("Membership"),
        automaticallyImplyLeading: false,
      ),
>>>>>>> 4af6615df63cd2618341a3cdb9bd227ae2a1796d
      bottomNavigationBar: new BottomApp(3),
      floatingActionButton: new Unicorn(),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      
    

    );

  }
  
}
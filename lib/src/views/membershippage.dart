/*
Created: 24-06-19
Edited: 24-07-19
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
      appBar: new AppBar(title: new Text("Membership"),
      automaticallyImplyLeading: false,),
      body: SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      /*child: Row (mainAxisAlignment: MainAxisAlignment.spaceEvenly,),*/
      children: <Widget>
      
      
      [Container(
        
        constraints: BoxConstraints.expand(height: 180.0),
        margin: EdgeInsets.all(5), //Border to follow Rhine Design Language
        padding: EdgeInsets.only(left:20.0,right:50.0,top:90.0,bottom:50.0),
        
        decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
        Radius.circular(8.0),
        ),
        ),
        
        color: Colors.grey),
          child: Text("My Membership Card"),
          
          
        ),
        
      
      Container(
        constraints: BoxConstraints.expand(height: 200.0,width:160.0),
        margin: EdgeInsets.only(left:20,top:10), //Border to follow Rhine Design Language
        padding: EdgeInsets.only(left:30.0,right:30.0,top:140.0,bottom:40.0),
        decoration: ShapeDecoration( 
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
        Radius.circular(10.0),
        ),
        ),
          color: Colors.redAccent),
          child: Text("Company ABC"),
          
          
        ),

        Container(
        constraints: BoxConstraints.expand(height: 200.0,width:160.0),
        margin: EdgeInsets.only(left:20,top:8), //Border to follow Rhine Design Language
         padding: EdgeInsets.only(left:30.0,right:30.0,top:140.0,bottom:40.0),
        decoration: ShapeDecoration( 
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
        Radius.circular(10.0),
        ),
        ),
          color: Colors.lightBlueAccent),
          child: Text("Company XYZ"),
          
          
        ),
        Container(
        constraints: BoxConstraints.expand(height: 200.0,width:160.0),
        margin: EdgeInsets.only(left:20,top:8), //Border to follow Rhine Design Language
        padding: EdgeInsets.only(left:30.0,right:30.0,top:140.0,bottom:40.0),
        decoration: ShapeDecoration
        ( 
          shape: RoundedRectangleBorder
          
          (
            
            borderRadius: BorderRadius.all
            
              (
                Radius.circular(10.0),
              ),
          ),

                color: Colors.yellow[100]),
                child: Text("Company DEF"),
          
          
                )
      ],
      
      
      )
      ),
      bottomNavigationBar: new BottomApp(3),
      floatingActionButton: new Unicorn(),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      
    

    );

  }
  
}
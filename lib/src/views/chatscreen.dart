/*
Created: 24-06-19
Edited: 19-07-19
Description: Homepage for Rhine. The page the app routes to upon accessing the app. Chatscreen for mechant to user chat interface
*/

import 'package:flutter/material.dart';
import '../widgets/unicorn.dart';
import '../widgets/bottomapp.dart';
import 'package:floating_search_bar/floating_search_bar.dart';



class ChatScreen extends StatefulWidget {                     //modified
  ChatScreen({Key key, this.title}) : super(key: key);

  final String title;
  @override                                                        //new
  State createState() => new ChatScreenState();                    //new
} 

// Add/Modify the ChatScreenState class definition in chatscreen.dart - Fred

class ChatScreenState extends State<ChatScreen> { 

  //Store Definitions Here - Fred
  void _handleSubmitted(String text) 
  {
  _textController.clear();
  } 

  @override
  final TextEditingController _textController = new TextEditingController(); //new                                                        //new
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        title: new Text("Chat"),
        automaticallyImplyLeading: false,
      ),
      //body: _buildTextComposer(),
      bottomNavigationBar: new BottomApp(1),
      //------------------Floating Action Button---------------------
      floatingActionButton: new Unicorn(),
      /*child: Icon(Icons.add),
      
      onPressed: () {
        
      }, */
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  
}
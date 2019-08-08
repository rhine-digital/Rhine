/*
Created: 24-06-19
Edited: 19-07-19
Description: Homepage for Rhine. The page the app routes to upon accessing the app. Chatscreen for mechant to user chat interface
*/

import 'package:flutter/material.dart';


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
      body: _buildTextComposer(),
    );
  }
  
}
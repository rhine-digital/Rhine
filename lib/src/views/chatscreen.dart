/*
Created: 24-06-19
Edited: 19-07-19
Description: Homepage for Rhine. The page the app routes to upon accessing the app. Chatscreen for mechant to user chat interface
*/

import 'package:flutter/material.dart';

class FABBottomAppBarItem {
  FABBottomAppBarItem({this.iconData, this.text});
  IconData iconData;
  String text;
}
class Data
{
  String title;

  Data(List<String> titles);
}
class ChatScreen extends StatefulWidget {                     //modified
  ChatScreen({Key key, this.title}) : super(key: key);

  final String title;
  @override                                                        //new
  State createState() => new ChatScreenState();                    //new
} 


// Add/Modify the ChatScreenState class definition in chatscreen.dart - Fred


class ChatScreenState extends State<ChatScreen> { 

  //Store Definitions Here - Fred

  @override                                                  //new
  Widget build(BuildContext context) {

    return Scaffold(
      body: _buildListView(context),
      );
  }

}
  Widget _buildListView(BuildContext context) {

      final titles = ['bike', 'boat', 'bus', 'car',
      'railway', 'run', 'subway', 'transit', 'walk'];

      final icons = [Icons.directions_bike, Icons.directions_boat,
      Icons.directions_bus, Icons.directions_car, Icons.directions_railway,
      Icons.directions_run, Icons.directions_subway, Icons.directions_transit,
      Icons.directions_walk];
     final data = Data(titles);
      return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card( //                           <-- Card widget
            child: ListTile(
              leading: Icon(icons[index]),
              title: Text(titles[index]), 
        
              onTap:()
              {  
            Navigator.push(context,MaterialPageRoute(builder: (context) => SecondScreen(data:titles[index]),));
              },

            ),
           
          );
        },
      ); 
}
        
void _navigateToSecondScreen(BuildContext context) {
          
              Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondScreen(data:titles[index]),
            ));
      
          }

class SecondScreen extends StatelessWidget {
  @override
    final String data;
    SecondScreen({Key key, @required this.data}) : super(key: key);
      Widget build(BuildContext context) {
        return Scaffold(
          body: Center(
            child: RaisedButton(
              child: Text(
                data,
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                _goBackToFirstScreen(context);
              },
            ),
          ),
        );
      }

      void _goBackToFirstScreen(BuildContext context) {
        Navigator.pop(context);
      }
    }
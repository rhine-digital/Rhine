import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class Chat extends StatelessWidget {
  @override
    final String data;
    Chat({Key key, @required this.data}) : super(key: key);
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(data),),
          body: Center(
            child: RaisedButton(
              child: Text(
                data,
                style: TextStyle(fontSize: 24),),
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


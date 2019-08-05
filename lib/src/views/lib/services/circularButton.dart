import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
        onTap: () {},
        child: ClipOval(
          child: Container(
            color: Colors.blue,
            height: 120.0, // height of the button
            width: 120.0, // width of the button
            child: Center(child: Text('A Circular Button')),
          ),
        ),
      )),
    );
  }
}
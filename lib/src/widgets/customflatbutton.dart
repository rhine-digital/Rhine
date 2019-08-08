/*
Created: 24-07-19
Edited: 24-07-19
Description: Custom flat button widget
*/
import 'package:flutter/material.dart';

//Creates a custom flat button with a customizable label and icon.
class CustomFlatButton extends StatelessWidget {
  CustomFlatButton ({ @required this.label, @required this.icon, @required this.textColor, @required this.iconColor,
                      @required this.onTap, this.width = 85, this.height = 50, 
                      this.buttonBgColor = const Color(0xFFFFFF), this.splashColor = const Color(0x006E6E6E), 
                      this.highlightColor = const Color(0xFFE8E8E8), this.isContainedInk = true});
  
  final String label;

  final IconData icon;

  final double width;
  final double height;

  final Color iconColor;
  final Color textColor;

  //Default color: White
  final Color buttonBgColor;

  //Default color: Dark Grey #6E6E6E
  final Color splashColor;

  //Default color: Light Grey #E8E8E8
  final Color highlightColor;

  final VoidCallback onTap;

  final bool isContainedInk;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      
      child: InkResponse(
        
        splashColor: splashColor,
        highlightColor: highlightColor,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            Icon(
              icon,
              color: iconColor
            ),
            Flexible(
              child: Text(
                label,
                style: TextStyle(color: textColor)
              )
            ),
          ],
        ),
        onTap: onTap,
        containedInkWell: isContainedInk,
        borderRadius: BorderRadius.all( Radius.circular(20) ),
      )
    ); 
  }
}
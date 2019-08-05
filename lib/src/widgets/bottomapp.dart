/*
Created: 19-07-19
Edited: 19-07-19
Description: Bottom nav bar of the app
*/

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../resources/app-palette.dart';
import '../widgets/customflatbutton.dart';

class BottomApp extends StatefulWidget {
  BottomApp({
    this.items,
    this.centerItemText,
    this.height: 60.0,
    this.iconSize: 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    this.onTabSelected,
  });

  final List<FABBottomAppBarItem> items;
  final ValueChanged<int> onTabSelected;
  final String centerItemText;
  final double height;
  final double iconSize;
  final Color backgroundColor;
  final Color color;
  final Color selectedColor;
  final NotchedShape notchedShape;

  //Represent various pages. 
  // 1 - Chat, 2 - Discovery, 3 - Membership, 4 - Profile
  //final int pageNum;

  @override
  _BottomAppState createState() => _BottomAppState();
  
}

class _BottomAppState extends State<BottomApp> {
  int _selectedIndex = 0;

  _updateIndex(int index) {
    widget.onTabSelected(index);

    setState(() {
     _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: _updateIndex
      );
    });
    items.insert(items.length >> 1, _buildMiddleTabItem());
    
    
    return new Container(
      //height: 60,
      padding: EdgeInsets.only(top: 5),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items
        ),
        color: widget.backgroundColor,
      )
    );
  }

  Widget _buildMiddleTabItem() {
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: widget.iconSize),
            Text(
              widget.centerItemText ?? '',
              style: TextStyle(color: widget.color),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem({FABBottomAppBarItem item, int index, ValueChanged<int> onPressed}) {
    Color color = _selectedIndex == index ? widget.selectedColor : widget.color;

    return CustomFlatButton(
      label: item.text,
      textColor: color,
      icon: item.iconData,
      iconColor: color,
      height: widget.height,
      onTap: () => onPressed(index)
    );
  }
}

class FABBottomAppBarItem {
  FABBottomAppBarItem({this.iconData, this.text});
  IconData iconData;
  String text;
}


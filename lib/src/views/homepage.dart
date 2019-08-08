/*
Created: 05-08-19
Edited: 05-08-19
Description: Homepage for Rhine. Contains all other pages to be used
*/

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rhine/src/widgets/bottomapp.dart' as prefix0;
import '../widgets/bottomapp.dart';
import '../widgets/unicorn.dart';
import '../widgets/FABwithIcon.dart';
import '../widgets/layout.dart';
import '../resources/app-palette.dart';

import 'chatscreen.dart';
import 'discoverypage.dart';
import 'membershippage.dart';
import 'profilepage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentTab = 0;

  ChatScreen chatPage;
  DiscoveryPage disPage;
  MembershipPage memPage;
  ProfilePage profilePage;

  Widget currentPage;
  List<Widget> pages;

  void _selectedTab(int index) {
    setState(() {
      currentTab = index;
      //print(pages[index]);
      currentPage = pages[index];
    });
  }

  void _selectedFab(int index) {
    setState(() {
    
    });
  }

  @override
  void initState() {
    chatPage = ChatScreen( title: "Chat" );
    disPage = DiscoveryPage( title: "Discovery" );
    memPage = MembershipPage();
    profilePage = ProfilePage();


    pages = [chatPage, disPage, memPage, profilePage];
    currentPage = chatPage;

    super.initState();
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Rhine"),
        automaticallyImplyLeading: false,
      ),
      body: currentPage,
      bottomNavigationBar: BottomApp(
        onTabSelected: _selectedTab,
        items: [
          prefix0.FABBottomAppBarItem(iconData: Icons.chat_bubble, text: "Chat"),
          prefix0.FABBottomAppBarItem(iconData: Icons.location_searching, text: "Discovery"),
          prefix0.FABBottomAppBarItem(iconData: Icons.inbox, text: "Member"),
          prefix0.FABBottomAppBarItem(iconData: Icons.account_circle, text: "Profile"),
        ],
        selectedColor: Palette.buttonColor,
        color: Palette.notButtonColor
      ),
      floatingActionButton: _buildFab(context),
      
      floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildFab(BuildContext context) {
    final icons = [ Icons.sms, Icons.mail, Icons.phone ];
    return AnchoredOverlay(
      showOverlay: true,
      overlayBuilder: (context, offset) {
        return CenterAbout(
          position: Offset(offset.dx, offset.dy - icons.length * 35.0),
          child: FabWithIcons(
            icons: icons,
            onIconTapped: _selectedFab,
          ),
        );
      },
      child: FloatingActionButton(
        onPressed: () { },
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 0.0,
      ),
    );
  }
}

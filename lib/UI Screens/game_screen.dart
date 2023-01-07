import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:ludotable/UI%20Screens/more_screen.dart';
import 'package:ludotable/UI%20Screens/notification_screen.dart';
import 'package:ludotable/constants.dart';
import 'package:ludotable/widget/list_view.dart';

import '../widget/upcomin_contest.dart';



class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child:Scaffold(
        key: scaffoldKey,
    appBar: AppBar(
      bottom: const TabBar(
        tabs: <Widget>[
          Tab(
            text:"Upcoming",
            icon: Icon(Icons.upcoming,
              color: Colors.white
            ),
          ),
          Tab(
            text: "Live",
            icon: Icon(Icons.live_tv_rounded,
                color: Colors.white
            ),
          ),
          Tab(
            text:"My Contest",

            icon: Icon(Icons.person,
                color: Colors.white

            ),
          ),
          Tab(
            text: "completed",

            icon: Icon(Icons.verified_user_outlined,
                color: Colors.white
            ),
          ),
        ],
      ),
      title: Text("Ludo Table"),
      leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.person_pin)),
      actions: [
        IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MoreScreen()));
          },
          icon: Icon(Icons.account_balance_wallet,
            size: 32,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));

          },
          icon: Icon(Icons.notifications,
            size: 32,),
        )

      ],
    ),
        body: const TabBarView(
          children: <Widget>[

           ListContest(),
            ListContest(),
            ListContest(),
            ListContest(),
          ],
        ),
      bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (index) => setState(() => _currentIndex = index),
          items: <BottomNavyBarItem>[
      BottomNavyBarItem(
      icon: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>GameScreen()));
          },
          child: Icon(Icons.games)),
      title: Text('Game'),
      activeColor: DarkCornflowerBlue,
      textAlign: TextAlign.center,
    ),
    BottomNavyBarItem(
    icon: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MoreScreen()));
        },
        child: Icon(Icons.play_circle)),
    title: Text('How To Play'),
    activeColor: DarkCornflowerBlue,
    textAlign: TextAlign.center,
    ),
    BottomNavyBarItem(
    icon: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MoreScreen()));
      },
        child: Icon(Icons.account_balance_wallet)),
    title: Text(
    'Wallet',
    ),
    activeColor: DarkCornflowerBlue,
    textAlign: TextAlign.center,
    ),

]),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),

    );

  }
}

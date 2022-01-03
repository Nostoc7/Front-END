

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:login_app/Mainmenu/home.dart';
import 'package:login_app/Mainmenu/profil.dart';
import 'package:login_app/Mainmenu/riwayat.dart';
import 'package:login_app/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xffCCF1F5),
      ),
      home: mainmenu()
    );
  }
}

class mainmenu extends StatefulWidget {
  @override
  
  Home createState() => Home();
}

class Home extends State<mainmenu> {

  int _currentIndex = 0;
  final tabs = [
    profil(),
    home(),
    riwayat()
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xffCCF1F5),
        items: <Widget>[
          Icon(
            Icons.home, size: 30,
            color: Color(0xff00B7CD),
            ),
          Icon(
            Icons.search, size: 30,
            color: Color(0xff00B7CD),
            ),
          Icon(
            Icons.timelapse, size: 30,
            color: Color(0xff00B7CD),
            )
        ],
        onTap: (index){
          setState((){
            _currentIndex = index;
          }
          );
        },
      ),
    );
  }
} 
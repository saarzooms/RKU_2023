import 'dart:developer';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:bmi_calc/screen/call_screen.dart';
import 'package:bmi_calc/screen/chat_screen.dart';
import 'package:bmi_calc/screen/home_screen.dart';
import 'package:flutter/material.dart';

import 'dropdown_screen.dart';

class BottomNavScreen extends StatefulWidget {
  BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currIndx = 0;
  List pages = [HomeScreen(), ChatScreen(), CallScreen(), DropDown()];
  @override
  Widget build(BuildContext context) {
    log('build called');
    return Scaffold(
      body: pages[currIndx],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          Icons.home,
          Icons.call,
          Icons.chat,
          Icons.person,
        ],
        activeIndex: currIndx,
        gapLocation: GapLocation.end,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        // rightCornerRadius: 32,
        onTap: (index) => setState(() => currIndx = index),
        //other params
      ),
      // BottomNavigationBar(
      //   currentIndex: currIndx,
      //   onTap: (v) {
      //     log(v.toString());
      //     currIndx = v;
      //     setState(() {});
      //     log(currIndx.toString());
      //   },
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
      //     BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
      //     // BottomNavigationBarItem(
      //     //     icon: Icon(Icons.settings), label: 'Settings'),
      //   ],
      // ),
    );
  }
}

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List pages = [
    HomePage(),
    Container(
      color: Colors.red,
      child: Text(
        'About',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Container(
      color: Colors.yellow,
      child: Text(
        'Settings',
        style: TextStyle(fontSize: 30),
      ),
    ),
  ];
  int curIndx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pages[curIndx]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.purple,
        icons: [
          Icons.home,
          Icons.person,
          Icons.settings,
          Icons.refresh,
        ],
        activeIndex: curIndx,
        gapLocation: GapLocation.end,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        //rightCornerRadius: 32,
        onTap: (index) => setState(() => curIndx = index),
        //other params
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: curIndx,
      //   onTap: (index) {
      //     curIndx = index;
      //     setState(() {});
      //   },
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.settings), label: 'Settings'),
      //   ],
      // ),
    );
  }
}

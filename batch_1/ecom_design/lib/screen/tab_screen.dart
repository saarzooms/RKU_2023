import 'package:ecom_design/screen/home_screen.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Screens'),
            bottom: TabBar(tabs: [
              Icon(Icons.home),
              Icon(Icons.chat),
              Icon(Icons.person),
              Icon(Icons.settings),
            ]),
          ),
          body: TabBarView(children: [
            HomePage(),
            Container(
              child: Text('Chat Screen'),
            ),
            Container(
              child: Text('Profile Screen'),
            ),
            Container(
              child: Text('Settings Screen'),
            ),
          ])),
    );
  }
}

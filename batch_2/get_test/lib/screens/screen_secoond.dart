import 'package:flutter/material.dart';

class ScreenSecond extends StatelessWidget {
  const ScreenSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
        ),
        body: Center(child: Text('Second Screen')));
  }
}

import 'package:flutter/material.dart';

class ScreenThird extends StatelessWidget {
  const ScreenThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Third Screen'),
        ),
        body: Center(child: Text('Third Screen')));
  }
}

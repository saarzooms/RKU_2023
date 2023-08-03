import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        height: 200,
        width: MediaQuery.of(context).size.width,
        color: Colors.yellow,
        child: Container(
          color: Colors.green,
          child: Center(
            child: Text(
              'Hi, Arzoo',
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

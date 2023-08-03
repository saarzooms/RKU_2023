import 'dart:developer';

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Page'),
      ),
      body: Container(
        color: Colors.green,
        child: Column(
          children: [
            Text('Count : $count', style: TextStyle(fontSize: 40)),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });

                log('Clicked on click me $count');
              },
              child: Text('Click Me'),
            )
          ],
        ),
      ),
    );
  }
}

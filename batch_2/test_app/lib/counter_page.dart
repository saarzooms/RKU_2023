import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Counter: $counter ',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  print('Button clicked');
                  counter++;
                  print(counter);
                  setState(() {});
                },
                child: Text('Click Me'),
              ),
            ],
          ),
        ));
  }
}

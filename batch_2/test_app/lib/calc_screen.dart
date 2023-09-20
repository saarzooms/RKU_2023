import 'package:flutter/material.dart';

class CalcScreen extends StatefulWidget {
  const CalcScreen({super.key});

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  TextEditingController numOController = TextEditingController();
  TextEditingController numTController = TextEditingController();
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              TextField(
                controller: numOController,
                decoration: InputDecoration(
                  labelText: 'Number 1',
                ),
              ),
              TextField(
                controller: numTController,
                decoration: InputDecoration(
                  labelText: 'Number 2',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      result = int.parse(numOController.text) +
                          int.parse(numTController.text);
                      setState(() {});
                    },
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '*',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      result = int.parse(numOController.text) ~/
                          int.parse(numTController.text);
                      setState(() {});
                    },
                    child: Text(
                      '/',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
              Text(
                'Result $result',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ));
  }
}

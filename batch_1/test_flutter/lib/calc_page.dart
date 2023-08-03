import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  int result = 0;
  TextEditingController numFController = TextEditingController();
  TextEditingController numSController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calc'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: numFController,
                  decoration: InputDecoration(labelText: 'Number 1'),
                ),
              ),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: numSController,
                  decoration: InputDecoration(hintText: 'Number 2'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  result = int.parse(numFController.text) +
                      int.parse(numSController.text);
                  setState(() {});
                },
                child: const Text(
                  '+',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  '-',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  '*',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  '/',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
          Text('Result:$result'),
        ],
      ),
    );
  }
}

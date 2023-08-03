import 'dart:math';

import 'package:flutter/material.dart';

class BMICalc extends StatefulWidget {
  const BMICalc({super.key});

  @override
  State<BMICalc> createState() => _BMICalcState();
}

class _BMICalcState extends State<BMICalc> {
  TextEditingController htController = TextEditingController();
  TextEditingController wtController = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calc'),
        ),
        body: Column(
          children: [
            TextField(
              controller: htController,
              decoration: InputDecoration(labelText: 'Height in Meters'),
            ),
            TextField(
              controller: wtController,
              decoration: InputDecoration(labelText: 'Weight in Kg'),
            ),
            ElevatedButton(
              onPressed: () {
                result = double.parse(wtController.text) /
                    pow(double.parse(htController.text), 2);
                setState(() {});
              },
              child: Text('Calculate'),
            ),
            Text('Result : $result'),
          ],
        ));
  }
}

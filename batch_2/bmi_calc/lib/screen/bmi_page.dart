import 'dart:math';

import 'package:flutter/material.dart';

class BMIPage extends StatefulWidget {
  const BMIPage({super.key});

  @override
  State<BMIPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  TextEditingController wt = TextEditingController();
  TextEditingController ht = TextEditingController();
  double res = 0;
  String msg = '';
  var color = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: wt,
                decoration: InputDecoration(
                  labelText: 'Weight in Kg',
                ),
              ),
              TextField(
                controller: ht,
                decoration: InputDecoration(
                  labelText: 'Height in Meters',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  res = double.parse(wt.text) / pow(double.parse(ht.text), 2);
                  if (res < 18.5) {
                    msg = "Underweight";
                    color = Colors.blue;
                  } else if (res < 25) {
                    msg = "Normal";
                    color = Colors.green;
                  }
                  setState(() {});
                },
                child: Text('Calculate'),
              ),
              Text("BMI : $res"),
              Text(
                msg,
                style: TextStyle(color: color),
              ),
            ],
          ),
        ));
  }
}

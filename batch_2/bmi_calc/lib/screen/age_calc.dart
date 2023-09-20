import 'package:flutter/material.dart';

class AgeCalc extends StatefulWidget {
  const AgeCalc({super.key});

  @override
  State<AgeCalc> createState() => _AgeCalcState();
}

class _AgeCalcState extends State<AgeCalc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Age Calc')),
        body: Column(
          children: [],
        ));
  }
}

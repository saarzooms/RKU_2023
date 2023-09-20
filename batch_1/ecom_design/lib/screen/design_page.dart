import 'package:flutter/material.dart';

class DesignPage extends StatefulWidget {
  const DesignPage({super.key});

  @override
  State<DesignPage> createState() => _DesignPageState();
}

class _DesignPageState extends State<DesignPage> {
  List colors = [Colors.yellow, Colors.pink, Colors.purple, Colors.grey];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(children: [
        Expanded(
            child: Column(
          children: [
            Expanded(
                child: Container(
                    color: colors[(count) % 4], height: double.infinity)),
            Expanded(
                child: Container(
                    color: colors[(count + 1) % 4], height: double.infinity)),
          ],
        )),
        Expanded(
          child: Container(
              child: IconButton(
                onPressed: () {
                  count++;
                  setState(() {});
                },
                icon: Icon(Icons.star),
              ),
              height: double.infinity),
        ),
        Expanded(
            child: Column(
          children: [
            Expanded(
                child: Container(
                    color: colors[(count + 3) % 4], height: double.infinity)),
            Expanded(
                child: Container(
                    color: colors[(count + 2) % 4], height: double.infinity)),
          ],
        )),
      ]),
    ));
  }
}

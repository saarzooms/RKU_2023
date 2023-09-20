import 'dart:developer';

import 'package:flutter/material.dart';

class ComponentTestPage extends StatefulWidget {
  const ComponentTestPage({super.key});

  @override
  State<ComponentTestPage> createState() => _ComponentTestPageState();
}

class _ComponentTestPageState extends State<ComponentTestPage> {
  bool isChecked = false;
  List fruits = ['Apple', 'Banana', 'Grapes', 'Mango'];
  late String selFruit;

  @override
  void initState() {
    selFruit = fruits[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            child: DropdownButton(
                value: selFruit,
                items: fruits
                    .map(
                      (fruit) => DropdownMenuItem(
                        value: fruit,
                        child: Text(fruit),
                      ),
                    )
                    .toList(),
                onChanged: (v) {
                  selFruit = v as String;
                  setState(() {});
                })
            // Column(
            //   children: [

            //     // CheckboxListTile(
            //     //     controlAffinity: ListTileControlAffinity.leading,
            //     //     title: Text('I accept terms and conditions'),
            //     //     value: isChecked,
            //     //     onChanged: (v) {
            //     //       isChecked = v!;
            //     //       setState(() {});
            //     //       log(v.toString());
            //     //     }),
            //     // for (int i = 0; i < fruits.length; i++)
            //     //   RadioListTile(
            //     //       title: Text(fruits[i]),
            //     //       value: fruits[i],
            //     //       groupValue: selFruit,
            //     //       onChanged: (v) {
            //     //         selFruit = v;
            //     //         setState(() {});
            //     //       }),
            //   ],
            // ),
            ),
      ),
    );
  }
}

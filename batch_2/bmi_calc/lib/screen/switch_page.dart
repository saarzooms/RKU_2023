import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool isSelected = false;
  var darkColor = Colors.black;
  var lightColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isSelected ? darkColor : lightColor,
      appBar: AppBar(
        title: Text('Widget Test'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Light',
              style: TextStyle(
                  fontSize: 25, color: isSelected ? lightColor : darkColor),
            ),
            Switch(
                value: isSelected,
                onChanged: (v) {
                  isSelected = v;
                  setState(() {});
                  Fluttertoast.showToast(
                      msg: "You select" + (v ? " dark " : " light ") + "theme",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      fontSize: 16.0);
                }),
            Text(
              'Dark',
              style: TextStyle(
                  fontSize: 25, color: isSelected ? lightColor : darkColor),
            ),
          ],
        ),
      ),
    );
  }
}

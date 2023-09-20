import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StackTest extends StatelessWidget {
  const StackTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Stack Test'),
          centerTitle: true,
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 400,
              width: 200,
              color: Colors.green,
              child: Text(
                'First container',
                style: TextStyle(fontSize: 40),
              ),
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.yellow,
              child: CircularProgressIndicator(
                color: Colors.red,
                strokeWidth: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 25.0);
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
            ),
          ],
        )
        //  Container(
        //   color: Colors.green,
        //   padding: EdgeInsets.all(16),
        //   child: Container(color: Colors.yellow),
        // ),
        );
  }
}

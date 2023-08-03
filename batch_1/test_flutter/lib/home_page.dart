import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
          height: 80,

          // color: Colors.green,
          child: Row(
            children: [
              Container(color: Colors.green, height: 80, width: 80),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Product Name'), Text('Description')],
              )),
              Icon(Icons.add)
            ],
          )),
    );
  }
}

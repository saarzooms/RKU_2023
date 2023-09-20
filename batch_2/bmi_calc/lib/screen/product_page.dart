import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  ProductPage(this.productName, {super.key});
  String productName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(productName)),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Text(
            productName,
            style: TextStyle(
              color: Colors.red,
              fontSize: 60,
            ),
          ),
        ),
      ),
    );
  }
}

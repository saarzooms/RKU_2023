import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('My Contact List')),
        body: Column(
          children: [
            contact_card('Mohit', '8855223366'),
            contact_card('Rohit', '8855223966'),
            contact_card('Het', '8855233366'),
            contact_card('Mehul', '8855623366'),
          ],
        ));
  }

  contact_card(String name, String no) {
    return Card(
        child: Row(
      children: [
        Container(color: Colors.grey, height: 50, width: 50),
        Column(
          children: [
            Text(name, style: TextStyle(fontSize: 30)),
            Text(no, style: TextStyle(fontSize: 25)),
          ],
        ),
      ],
    ));
  }
}

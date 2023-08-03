import 'package:flutter/material.dart';

import 'model/contact_details.dart';

class ContactList extends StatelessWidget {
  ContactList({super.key});

  List<ContactDetails> contacts = [
    ContactDetails('Arzoo', '8855221144'),
    ContactDetails('Raju', '8855221122'),
    ContactDetails('Raj', '8855224567'),
    ContactDetails('Rajan', '8855114567'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Contact List')),
        body: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(contacts[i].name),
                subtitle: Text(contacts[i].no),
                leading: Icon(Icons.person),
              );
            })
        // ListView(
        //   children: [
        //     for (int i = 0; i < contacts.length; i++)
        //       ListTile(
        //         title: Text(contacts[i].name),
        //         subtitle: Text(contacts[i].no),
        //         leading: Icon(Icons.person),
        //       )
        //   ],
        // ),
        );
  }
}

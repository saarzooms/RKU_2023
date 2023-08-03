import 'package:flutter/material.dart';

import 'contact_details.dart';

class ColRowTest extends StatelessWidget {
  ColRowTest({super.key});
  List<ContactDetails> contact = [
    ContactDetails('ABC', '20852', 8596741236),
    ContactDetails('BCD', '20851', 8596749236),
    ContactDetails('MNO', '20853', 8596748236),
    ContactDetails('XYZ', '20854', 8596745236),
    ContactDetails('AB', '208533', 8596740236),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: Text('Col Row Test'),
      ),
      body: Column(children: [
        for (int i = 0; i < contact.length; i++) getContactCard(contact[i]),
      ]),
    );
  }

  getContactCard(ContactDetails ct) {
    return Card(
      child: Container(
        // height: 50,
        width: double.infinity,
        // width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ct.name,
              style: TextStyle(fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  ct.mono.toString(),
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  ct.enroll,
                  style: TextStyle(fontSize: 30),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

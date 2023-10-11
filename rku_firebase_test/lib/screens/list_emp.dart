import 'package:flutter/material.dart';
import 'package:rku_firebase_test/services/fire_operations.dart';

class ListEmp extends StatefulWidget {
  const ListEmp({super.key});

  @override
  State<ListEmp> createState() => _ListEmpState();
}

class _ListEmpState extends State<ListEmp> {
  //to get stream object

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            //
          },
          title: Text('Name'),
          subtitle: Text('Contact no'),
          trailing: IconButton(
            onPressed: () {
              //logic to remove
            },
            icon: Icon(Icons.remove),
          ),
        );
      },
    ));
  }
}

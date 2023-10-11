import 'package:flutter/material.dart';
import 'package:rku_firebase_test/services/fire_operations.dart';

class ListEmp extends StatefulWidget {
  const ListEmp({super.key});

  @override
  State<ListEmp> createState() => _ListEmpState();
}

class _ListEmpState extends State<ListEmp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchEmployee();
  }

  fetchEmployee() {
    FireOperations.fetchEmployee();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Name'),
          subtitle: Text('Contact no'),
        );
      },
    )
        //  ElevatedButton(
        //   onPressed: () {
        //     FireOperations.fetchEmployee();
        //   },
        //   child: Text('Fetch Data'),
        // ),
        );
  }
}

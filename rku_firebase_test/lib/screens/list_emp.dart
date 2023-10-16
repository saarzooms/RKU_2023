import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:rku_firebase_test/screens/edit_emp.dart';
import 'package:rku_firebase_test/services/fire_operations.dart';

import '../models/employee_model.dart';

class ListEmp extends StatefulWidget {
  const ListEmp({super.key});

  @override
  State<ListEmp> createState() => _ListEmpState();
}

class _ListEmpState extends State<ListEmp> {
  //to get stream object
  Stream<QuerySnapshot> collection = FireOperations.readEmployee();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
            stream: collection,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                return ListView(
                  children: snapshot.data!.docs
                      .map<Widget>(
                        (emp) => ListTile(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => EditEmp(
                                          employee: Employee(
                                              employeeName:
                                                  emp['employee_name'],
                                              contactNo: emp['contact_no'],
                                              position: emp['position'],
                                              id: emp.id),
                                        )),
                                (route) => false);
                          },
                          title: Text(emp['employee_name']),
                          subtitle: Text(emp['contact_no']),
                          trailing: IconButton(
                            onPressed: () async {
                              //logic to remove
                              var response =
                                  await FireOperations.deleteEmp(emp.id);
                              // call update

                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text(response),
                                    );
                                  });
                            },
                            icon: Icon(Icons.delete),
                          ),
                        ),
                      )
                      .toList(),
                );
              } else {
                return Container();
              }
            })

        //     ListView.builder(
        //   itemCount: 5,
        //   itemBuilder: (context, index) {
        //     return
        // ListTile(
        //       onTap: () {
        //         //
        //       },
        //       title: Text('Name'),
        //       subtitle: Text('Contact no'),
        //       trailing: IconButton(
        //         onPressed: () {
        //           //logic to remove
        //         },
        //         icon: Icon(Icons.remove),
        //       ),
        //     );
        //   },
        // ),

        );
  }
}

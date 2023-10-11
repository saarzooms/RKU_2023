import 'package:flutter/material.dart';

import '../models/employee_model.dart';
import '../services/fire_operations.dart';
import 'list_emp.dart';

class AddEmp extends StatefulWidget {
  const AddEmp({super.key});

  @override
  State<AddEmp> createState() => _AddEmpState();
}

class _AddEmpState extends State<AddEmp> {
  TextEditingController name = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController position = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ListEmp(),
                ),
              );
            },
            icon: Icon(Icons.menu),
          ),
        ]),
        body: SafeArea(
          child: Column(
            children: [
              TextField(
                controller: name,
                decoration: InputDecoration(
                  labelText: 'Employee Name',
                ),
              ),
              TextField(
                controller: contact,
                decoration: InputDecoration(
                  labelText: 'Employee Contact No',
                ),
              ),
              TextField(
                controller: position,
                decoration: InputDecoration(
                  labelText: 'Employee Designation',
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  var response = await FireOperations.addEmployee(
                    Employee(
                        employeeName: name.text,
                        contactNo: contact.text,
                        position: position.text),
                  );
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(response),
                        );
                      });
                },
                child: Text('Add'),
              ),
            ],
          ),
        ));
  }
}

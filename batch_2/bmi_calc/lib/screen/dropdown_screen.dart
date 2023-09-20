import 'package:bmi_calc/models/student.dart';
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> fruits = ['Apple', "Mango", 'Banana'];
  String selFruit = 'Apple';
  List<Student> students = [
    Student('Mehul', '21SOECE1115'),
    Student('Shima', '21SOECE1118'),
    Student('Ahmed', '21SOECE1120'),
  ];
  late Student selStu;
  @override
  void initState() {
    super.initState();
    selStu = students[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Test'),
      ),
      body: Container(
          child: DropdownButton(
              isExpanded: true,
              value: selStu,
              items: students
                  .map(
                    (student) => DropdownMenuItem(
                      value: student,
                      child: ListTile(
                        title: Text(student.name),
                        subtitle: Text(student.enroll),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (v) {
                selStu = v!;
                setState(() {});
              })),
    );
  }
}

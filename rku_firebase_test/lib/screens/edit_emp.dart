import 'package:flutter/material.dart';

import '../models/employee_model.dart';
import '../services/fire_operations.dart';
import 'list_emp.dart';

class EditEmp extends StatefulWidget {
  final Employee? employee;
  EditEmp({this.employee});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EditEmp();
  }
}

class _EditEmp extends State<EditEmp> {
  final _employee_name = TextEditingController();
  final _employee_position = TextEditingController();
  final _employee_contact = TextEditingController();
  final _docid = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    _docid.value = TextEditingValue(text: widget.employee!.id.toString());
    _employee_name.value =
        TextEditingValue(text: widget.employee!.employeeName.toString());
    _employee_position.value =
        TextEditingValue(text: widget.employee!.position.toString());
    _employee_contact.value =
        TextEditingValue(text: widget.employee!.contactNo.toString());
  }

  @override
  Widget build(BuildContext context) {
    final DocIDField = TextField(
        controller: _docid,
        readOnly: true,
        autofocus: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Name",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    final nameField = TextFormField(
        controller: _employee_name,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Name",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final positionField = TextFormField(
        controller: _employee_position,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Position",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
    final contactField = TextFormField(
        controller: _employee_contact,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Contact Number",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    final viewListbutton = TextButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil<dynamic>(
            context,
            MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => ListEmp(),
            ),
            (route) => false, //if you want to disable back feature set to false
          );
        },
        child: const Text('View List of Employee'));

    final SaveButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Theme.of(context).primaryColor,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            var response = await FireOperations.updateEmp(Employee(
                employeeName: _employee_name.text,
                contactNo: _employee_contact.text,
                position: _employee_position.text,
                id: _docid.text));
            // call update

            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text(response),
                  );
                });
          }
        },
        child: Text(
          "Update",
          style: TextStyle(color: Theme.of(context).primaryColorLight),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Edit'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DocIDField,
                  const SizedBox(height: 25.0),
                  nameField,
                  const SizedBox(height: 25.0),
                  positionField,
                  const SizedBox(height: 35.0),
                  contactField,
                  viewListbutton,
                  const SizedBox(height: 45.0),
                  SaveButon,
                  const SizedBox(height: 15.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

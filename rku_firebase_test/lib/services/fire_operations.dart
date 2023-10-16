import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/employee_model.dart';

var db = FirebaseFirestore.instance;

class FireOperations {
  static addEmployee(Employee emp) {
    String response = '';
    // Create a new user with a first and last name
    final employee = <String, dynamic>{
      "employee_name": emp.employeeName,
      "contact_no": emp.contactNo,
      "position": emp.position
    };

// Add a new document with a generated ID
    db
        .collection("employee")
        .add(employee)
        .whenComplete(() => response = "Sucessfully added to the database")
        .catchError((e) => response = e);
    // then((DocumentReference doc) =>
    //     print('DocumentSnapshot added with ID: ${doc.id}'));
  }

  static Stream<QuerySnapshot> readEmployee() {
    CollectionReference employees = db.collection("employee");

    return employees.snapshots();
  }

  static updateEmp(Employee emp) {
    String response = '';
    CollectionReference employees = db.collection("employee");
    DocumentReference docRef = employees.doc(emp.id);
    final employee = <String, dynamic>{
      "employee_name": emp.employeeName,
      "contact_no": emp.contactNo,
      "position": emp.position
    };
    docRef
        .update(employee)
        .whenComplete(() => response = "Sucessfully added to the database")
        .catchError((e) => response = e);

    return response;
  }

  static deleteEmp(String id) {
    String response = '';
    CollectionReference employees = db.collection("employee");
    DocumentReference docRef = employees.doc(id);
    docRef
        .delete()
        .whenComplete(() => response = "Sucessfully deleted to the database")
        .catchError((e) => response = e);
  }
}

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
}

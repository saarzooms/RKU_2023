import 'package:cloud_firestore/cloud_firestore.dart';

var db = FirebaseFirestore.instance;

class FireOperations {
  static addEmployee(String name, String contact, String position) {
    // Create a new user with a first and last name
    final employee = <String, dynamic>{
      "employee_name": name,
      "contact_no": contact,
      "position": position
    };

// Add a new document with a generated ID
    db.collection("employee").add(employee).then((DocumentReference doc) =>
        print('DocumentSnapshot added with ID: ${doc.id}'));
  }

  static fetchEmployee() async {
    await db.collection("employee").get().then((event) {
      for (var doc in event.docs) {
        print("${doc.id} => ${doc.data()}");
      }
    });
  }
}

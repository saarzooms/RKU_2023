// To parse this JSON data, do
//
//     final employee = employeeFromJson(jsonString);

import 'dart:convert';

Employee employeeFromJson(String str) => Employee.fromJson(json.decode(str));

String employeeToJson(Employee data) => json.encode(data.toJson());

class Employee {
  String employeeName;
  String contactNo;
  String position;
  String? id;

  Employee({
    required this.employeeName,
    required this.contactNo,
    required this.position,
    this.id,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        employeeName: json["employee_name"],
        contactNo: json["contact_no"],
        position: json["position"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "employee_name": employeeName,
        "contact_no": contactNo,
        "position": position,
        "id": id,
      };
}

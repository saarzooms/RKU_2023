// class Todo {
//   int id;
//   String task;
//   bool completed;
//   Todo(this.id, this.task, this.completed);
// }
// To parse this JSON data, do
//
//     final todo = todoFromJson(jsonString);

import 'dart:convert';

List<Todo> todoFromJson(String str) =>
    List<Todo>.from(json.decode(str).map((x) => Todo.fromJson(x)));

String todoToJson(List<Todo> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Todo {
  bool completed;
  int? id;
  String? task;

  Todo({
    required this.completed,
    this.id,
    this.task,
  });

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        completed: json["completed"],
        id: json["id"],
        task: json["task"],
      );

  Map<String, dynamic> toJson() => {
        "completed": completed,
        "id": id,
        "task": task,
      };
}

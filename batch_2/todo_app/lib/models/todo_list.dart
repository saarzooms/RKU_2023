// To parse this JSON data, do
//
//     final taskList = taskListFromJson(jsonString);

import 'dart:convert';

List<TaskList> taskListFromJson(String str) =>
    List<TaskList>.from(json.decode(str).map((x) => TaskList.fromJson(x)));

String taskListToJson(List<TaskList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TaskList {
  bool completed;
  int? id;
  String? task;

  TaskList({
    required this.completed,
    this.id,
    this.task,
  });

  factory TaskList.fromJson(Map<String, dynamic> json) => TaskList(
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

import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/todo_list.dart';

class APICalls {
  static addTask(String task) async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('https://node-todo-api-yjo3.onrender.com/todos/'));
    request.body = json
        .encode({"id": DateTime.now().millisecondsSinceEpoch, "task": task});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

//to update task with id
  static updateTask(int id, bool isCompleted) async {
    http.Response response = await http.put(
        Uri.parse('https://node-todo-api-yjo3.onrender.com/todos/$id'),
        body: json.encode({"completed": isCompleted}));
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }

  //to delete task
  static deleteTask(int id) async {
    http.Response response = await http
        .delete(Uri.parse('https://node-todo-api-yjo3.onrender.com/todos/$id'));
    if (response.statusCode == 200) {
      print(response.body.toString());
    }
  }

  //to fetch all tasks
  static fetchTasks() async {
    List<TaskList> taskLst = [];
    http.Response response = await http
        .get(Uri.parse('https://node-todo-api-yjo3.onrender.com/todos/'));
    if (response.statusCode == 200) {
      print(response.body.toString());
      taskLst = taskListFromJson(response.body.toString());
      print(taskLst.length);
    }
    return taskLst;
  }
}

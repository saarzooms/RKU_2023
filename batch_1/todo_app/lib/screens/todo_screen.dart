import 'package:flutter/material.dart';

import '../models/todo.dart';
import '../services/api_call.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  late List<Todo> todos;
  TextEditingController _taskController = TextEditingController();
  //  List<Todo> todos =[];
  @override
  void initState() {
    todos = [];
    fetchAllTask();
    super.initState();
  }

  fetchAllTask() async {
    todos = await APICall.fetchTasks();
    //todos.clear();
    // todos.addAll(ret);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('total todos ${todos.length}'),
      ),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Todo App'),
        ),
        body: Column(
          children: [
            //add todos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _taskController,
                      decoration: InputDecoration(
                        labelText: 'Enter Task',
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      //add task in list
                      if (_taskController.text.isNotEmpty) {
                        //todos.add(Todo(DateTime.now().millisecondsSinceEpoch,
                        //_taskController.text, false));
                        await APICall.addTask(
                            DateTime.now().millisecondsSinceEpoch,
                            _taskController.text);
                        _taskController.clear();
                        fetchAllTask();
                        setState(() {});
                      }
                    },
                    icon: Icon(Icons.done),
                  ),
                ],
              ),
            ),
            //display todos
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  fetchAllTask();
                },
                child: ListView.builder(
                  itemCount: todos.length,
                  itemBuilder: (context, index) => CheckboxListTile(
                    value: todos[index].completed,
                    onChanged: (v) async {
                      //to update task status (completed)
                      await APICall.updateTask(todos[index].id!, v!);
                      fetchAllTask();
                      // todos[index].completed = v!;
                      setState(() {});
                    },
                    title: Text(todos[index].task ?? "",
                        style: todos[index].completed
                            ? TextStyle(
                                color: Colors.red,
                                decoration: TextDecoration.lineThrough)
                            : TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                    secondary: IconButton(
                      onPressed: () async {
                        //logic to delete task
                        // todos.removeAt(index);
                        await APICall.deleteTask(todos[index].id!);
                        fetchAllTask();
                        setState(() {});
                      },
                      icon: Icon(Icons.delete),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

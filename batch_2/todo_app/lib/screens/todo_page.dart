import 'package:flutter/material.dart';
import 'package:todo_app/models/todo_list.dart';

import '../services/api_calls.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TextEditingController _taskController = TextEditingController();
  List<TaskList> tskLst = [];
  @override
  void initState() {
    fetchAllTodos();
    super.initState();
  }

  fetchAllTodos() async {
    tskLst = await APICalls.fetchTasks();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Todos'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _taskController,
                    decoration: InputDecoration(labelText: 'Enter task '),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    //code to add task
                    if (_taskController.text.isNotEmpty) {
                      await APICalls.addTask(_taskController.text);
                      _taskController.clear();
                      fetchAllTodos();
                    }
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  fetchAllTodos();
                },
                child: ListView.builder(
                  itemCount: tskLst.length,
                  itemBuilder: (context, index) => CheckboxListTile(
                    onChanged: (v) async {
                      await APICalls.updateTask(tskLst[index].id!, v!);
                      fetchAllTodos();
                    },
                    value: tskLst[index].completed,
                    title: Text(tskLst[index].task ?? ""),
                    secondary: IconButton(
                      onPressed: () async {
                        //logic to delete task
                        await APICalls.deleteTask(tskLst[index].id!);
                        fetchAllTodos();
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

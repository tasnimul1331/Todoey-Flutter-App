import 'package:flutter/material.dart';
import 'task_tile.dart';
import '../model/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList({super.key , required this.tasks});
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  void addTask(String taskTitle) {
    setState(() {
      widget.tasks.add(Task(name: taskTitle));
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskName: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (bool? checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
    );
  }
}



import 'package:flutter/material.dart';
import '../model/task.dart';

class DataProvider extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy groceries'),
    Task(name: 'Walk the dog'),
    Task(name: 'Read a book'),
    Task(name: 'Exercise for 30 minutes'),
  ];

  List<Task> getTasks() {
    return tasks;
  }

  void addTask(String taskTitle) {
    tasks.add(Task(name: taskTitle));
    notifyListeners();
  }

  void toggleTaskStatus(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }

  void removeTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}

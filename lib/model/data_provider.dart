import 'package:flutter/material.dart';
import '../model/task.dart';
import 'dart:collection';

class DataProvider extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy groceries'),
    Task(name: 'Walk the dog'),
    Task(name: 'Read a book'),
    Task(name: 'Exercise for 30 minutes'),
  ];

  UnmodifiableListView<Task> getTasks() {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String taskTitle) {
    _tasks.add(Task(name: taskTitle));
    notifyListeners();
  }

  void toggleTaskStatus(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}

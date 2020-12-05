import 'package:flutter/cupertino.dart';
import 'package:todeys/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy bread'),
  ];
  int get taskCount {
    return tasks.length;
  }

  void addTasks(String newTasktitle) {
    final task = Task(name: newTasktitle);
    tasks.add(task);
    notifyListeners();
  }
}

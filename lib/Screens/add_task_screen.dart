import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todeys/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  static String newTasktitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10.0),
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 24.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (newText) {
                newTasktitle = newText;
              },
            ),
            SizedBox(height: 10.0),
            FlatButton(
              child: Text(
                'ADD',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskData>(context).addTasks(newTasktitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

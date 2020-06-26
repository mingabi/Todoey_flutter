import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:totoeyflutter/models/task.dart';
import 'package:totoeyflutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newValue) {
              newTaskTitle = newValue;
            },
          ),
          FlatButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle);
              Navigator.pop(context);
            },
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.lightBlueAccent,
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
    );
  }
}

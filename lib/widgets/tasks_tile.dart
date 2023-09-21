import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkCallBox;
  final VoidCallback deleteTask;

  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkCallBox,
      required this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: deleteTask,
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
            color: isChecked ? Colors.grey : Colors.black,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: checkCallBox,
        ));
  }
}

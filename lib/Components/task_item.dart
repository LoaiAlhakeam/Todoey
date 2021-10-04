import 'package:flutter/material.dart';

class TaskItem extends StatefulWidget {
  @override
  _TaskItemState createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool checkState = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task',
        style: TextStyle(
          decoration: checkState ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
        isCheck: checkState,
        toggleCheckbox: (bool? newValue) {
          setState(() {
            checkState = newValue!;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool isCheck;
  final Function toggleCheckbox;

  TaskCheckbox({required this.isCheck, required this.toggleCheckbox});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isCheck,
      activeColor: Colors.lightBlueAccent,
      onChanged: (value) {
        toggleCheckbox(value);
      },
    );
  }
}

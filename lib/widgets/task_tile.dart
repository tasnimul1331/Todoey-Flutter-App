import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task 3',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          color: isChecked ? Colors.grey : Colors.black,
        ),
      ),
      trailing: TaskCheckbox(
        checkState: isChecked,
        onChanged: (newValue) {
          setState(() {
            isChecked = newValue ?? false;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkState;
  final void Function(bool?) onChanged;
  const TaskCheckbox({
    super.key,
    required this.checkState,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkState,
      activeColor: Colors.lightBlueAccent,
      onChanged: onChanged,
    );
  }
}

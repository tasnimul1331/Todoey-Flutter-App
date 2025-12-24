import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String taskName;
  final void Function(bool?)? checkboxCallback;

  TaskTile({required this.taskName, this.isChecked = false, required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
          color: isChecked! ? Colors.grey : Colors.black,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
    );
  }
}


// setState(() {
//             isChecked = newValue ?? false;
//           });
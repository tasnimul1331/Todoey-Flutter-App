import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String taskName;
  final void Function(bool?)? checkboxCallback;
  final VoidCallback deleteCallback;

  const TaskTile({
    super.key,
    required this.taskName,
    this.isChecked = false,
    required this.checkboxCallback,
    required this.deleteCallback,
  });

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

      leading: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
      trailing: IconButton(icon: Icon(Icons.delete), onPressed: deleteCallback),
    );
  }
}

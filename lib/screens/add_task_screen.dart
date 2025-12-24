import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final ValueChanged<String> addTaskCallback;
  AddTaskScreen({super.key, required this.addTaskCallback});

  String newTaskTitle = '';
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom > 150
            ? 40.0 + MediaQuery.of(context).viewInsets.bottom
            : 250.0,
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28.0,
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            controller: controller,
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2),
              ),
            ),
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            child: Text(
              'Add',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
            onPressed: () {
              if (newTaskTitle.isNotEmpty) {
                Navigator.pop(context);
                addTaskCallback(newTaskTitle);
                newTaskTitle = '';
                controller.clear();
              }
            },
          ),
        ],
      ),
    );
  }
}

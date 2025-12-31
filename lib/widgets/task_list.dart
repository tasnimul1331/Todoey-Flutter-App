import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';
import '../model/data_provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (context, dataProvider, child) {
        return ListView.builder(
          itemCount: dataProvider.getTasks().length,
          itemBuilder: (context, index) {
            return TaskTile(
              taskName: dataProvider.getTasks()[index].name,
              isChecked: dataProvider.getTasks()[index].isDone,
              checkboxCallback: (bool? checkboxState) {
                dataProvider.toggleTaskStatus(index);
              },
              deleteCallback: () {
                dataProvider.removeTask(index);
              },
            );
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(             //Provider.of<TaskData>(context) = taskData [because of consumer]
      builder: (context,taskData,child){
        return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            tileTitle: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkBoxCallback: (checkBoxState) {
              taskData.updateTask(taskData.tasks[index]);
            },
            longPressCallBack: (){
              taskData.deleteTask(taskData.tasks[index]);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
      },
    );
  }
}

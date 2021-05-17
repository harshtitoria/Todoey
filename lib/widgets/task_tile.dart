import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String tileTitle;
  final Function checkBoxCallback;
  final Function longPressCallBack;
  TaskTile(
      {this.isChecked,
      this.tileTitle,
      this.checkBoxCallback,
      this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tileTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
      onLongPress: longPressCallBack,
    );
  }
}

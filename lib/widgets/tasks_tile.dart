import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.title,
      required this.isChecked,
      required this.checkboxCallback});
  final String title;
  final bool isChecked;
  final Function checkboxCallback;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
            fontWeight: isChecked ? FontWeight.bold : FontWeight.normal),
      ),
      value: isChecked,
      controlAffinity: ListTileControlAffinity.trailing,
      onChanged: (newValue) {
        checkboxCallback(newValue);
      },
    );
  }
}

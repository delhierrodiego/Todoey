import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text('Poop'),
      value: false,
      controlAffinity: ListTileControlAffinity.trailing,
      onChanged: null,
    );
  }
}

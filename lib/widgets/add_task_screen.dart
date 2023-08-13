import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key, this.addTaskCallback});
  final Function(String?)? addTaskCallback;

  @override
  Widget build(BuildContext context) {
    String task = '';
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          TextField(
            autofocus: true,
            onChanged: (value) {
              task = value;
            },
          ),
          ElevatedButton(
            onPressed: () {
              addTaskCallback!(task);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
            ),
            child: Text('ADD'),
          )
        ],
      ),
    );
  }
}

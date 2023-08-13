import 'package:flutter/material.dart';
import 'package:tt9_todo_class/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  const TasksList({
    super.key,
    required this.tasks,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            title: widget.tasks[index].title,
            isDone: widget.tasks[index].isDone,
            isDoneCallback: (value) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            },
          );
        });
  }
}

import 'package:flutter/material.dart';

import '../models/todo.dart';
import '../apps/main.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  const TodoItem(this.todo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.title),
      subtitle: Text(todo.date),
      leading: Checkbox(value: todo.done, onChanged: (_) => toggle(todo)),
      trailing: IconButton(onPressed: () => del(todo) , icon: const Icon(Icons.delete, color: Colors.grey)),
    );
  }
}
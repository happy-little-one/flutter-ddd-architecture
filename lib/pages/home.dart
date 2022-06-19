import 'package:flutter/material.dart';

import '../modules/todo/widgets/new_todo.dart';
import '../modules/todo/widgets/todo_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            newTodo,
            const SizedBox(height: 30),
            const TodoList()
          ],
        ),
      ),
    );
  }

  dispose() {
    controller.dispose();
  }
}

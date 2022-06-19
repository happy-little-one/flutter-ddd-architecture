import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../adapters/store.dart';
import 'todo_item.dart';
import '../models/todo.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        list,
        const SizedBox(height: 5),
         Row(children: [
          const Spacer(),
           checkboxes
        ])
      ],
    );
  }

}

Widget list = Obx(() => ListView(
    shrinkWrap: true,
    children: viewTodos
        .map((todo) => Column(children: [
          TodoItem(todo),
          const Divider(height: 2, color: Colors.grey)
    ])).toList())
);

Widget checkboxes = Obx(() => todos.isNotEmpty ? Row(
  children: ViewType.values.map((t) => Row(
    children: [
      Checkbox(value: t == viewType.value, onChanged: (_) => viewType(t)),
      Text(['all', 'active', 'done'][t.index])
    ],
  )).toList()
) : const SizedBox.shrink());
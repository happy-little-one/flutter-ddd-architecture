import 'package:flutter/material.dart';

import '../apps/main.dart';

final controller = TextEditingController();

Widget newTodo = TextField(
  decoration: const InputDecoration(hintText: "What need to be done ?"),
  autofocus: true,
  controller: controller,
  onSubmitted: (title) {
    if(title != '') {
      add(title);
      controller.clear();
    }
  }
);
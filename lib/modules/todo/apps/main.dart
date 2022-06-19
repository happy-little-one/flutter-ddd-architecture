import '../adapters/store.dart';
import '../models/todo.dart';

void add(String title) {
  todos.add(Todo(title));
}

void toggle(Todo todo) {
  todo.done = !todo.done;

  final index = todos.indexWhere((it)=> it.date == todo.date);
  todos[index] = todo;
}

void del(todo) {
  todos.remove(todo);
}
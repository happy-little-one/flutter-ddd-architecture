import 'package:get/get.dart';
import '../models/todo.dart';

final todos = <Todo>[].obs;

var viewType = ViewType.all.obs;

final viewTodos = todos.where((todo) {
  switch(viewType.value) {
    case ViewType.active:
      return !todo.done;
    case ViewType.done:
      return todo.done;
    default:
      return true;
  }
});

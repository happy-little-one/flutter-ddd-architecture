class Todo {
  final String date;
  final String title;
  bool done;

  Todo(this.title): date = DateTime.now().toString().replaceAll(RegExp(r"\..+$"), ''), done = false;
}

enum ViewType {
  all,
  active,
  done,
}
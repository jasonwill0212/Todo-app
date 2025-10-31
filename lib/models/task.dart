/// Class -> describe a template
class Task {
  /// properties
  String title;
  bool isCompleted;

  Task({required this.title, this.isCompleted = false});

  /// methods
}

void test() {
  /// create an object (instance) of Task class
  final task1 = Task(title: 'title');
}

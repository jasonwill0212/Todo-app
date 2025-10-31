import 'package:todo_app/models/task.dart';

class AppData {
  static List<Task> tasksList = [
    Task(title: "Cook Rice and Chicken at 10 am", isCompleted: true),
    Task(title: "Learn Reactjs at 12 pm", isCompleted: false),
    Task(title: "Have Lunch at 1pm", isCompleted: false),
    Task(title: "Learn HTML and CSS at 3pm", isCompleted: false),
    Task(title: "Have Dinner at 8pm", isCompleted: false),
  ];
}

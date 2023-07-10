import 'menu.dart';
import 'todo.dart';
import 'dart:io';

void main() {
  final menu = new Menu();
  menu.displayMainMenu();

  bool session = true;
  List todos = [];

  while (session) {
    String? choiceString = stdin.readLineSync();
    int choice = int.tryParse(choiceString!)!;

    switch (choice) {
      case 0:
        session = false;
        break;
      case 1:
        displayTodos(todos);
        break;
      case 2:
        stdout.write("Type... ");
        String? taskContent = stdin.readLineSync();
        createTask(taskContent!, todos);
        break;
      case 3:
        stdout.write("Update task...");
        menu.displayUpdateMenu();
        break;
      default:
        print("Something wrong!");
        break;
    }
  }
}

List createTask(String taskContent, List todos) {
  var task = new Task(taskContent, false);
  todos.add(task);
  print("Task was succefuly created !!!");
  return todos;
}

void displayTodos(List todos) {
  todos.length == 0
      ? print('(0 task)')
      : todos.forEach((element) {
          print(element.displayTask());
        });
}

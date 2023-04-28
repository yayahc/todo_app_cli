import 'menu.dart';
import 'todo.dart';
import 'dart:io';


void main() {
  var menu = new Menu();
  menu.afficheMenu(); 

  var loging = true;
  var todos = null;
  
  while (loging) {

    String? choiceString = stdin.readLineSync();
    int choice = int.tryParse(choiceString!)!;

    switch (choice) {
    case 0:
      loging = false;
      break;
    case 1:
      todos == null? print('(0 task)') : print(todos.displayTask());
      break;
    case 2:
      stdout.write("Typing... ");
      String? taskContent = stdin.readLineSync();
      var task = new TODO(taskContent!, false);
      todos = task;
      print("Task was succefuly created !!!");
      break;
    default:
      print("Something wrong!");
      break;
    }
  }
}
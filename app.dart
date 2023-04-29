import 'menu.dart';
import 'todo.dart';
import 'dart:io';


void main() {
    var menu = new Menu();
    menu.afficheMenu(); 

    var session = true;
    var todos = null;
  
    while (session) {

    String? choiceString = stdin.readLineSync();
    int choice = int.tryParse(choiceString!)!;

    switch (choice) {
    case 0:
        session = false;
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
    case 3:
        break;
    default:
        print("Something wrong!");
        break;
    }
    }
}
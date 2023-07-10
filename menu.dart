class Menu {
  void displayMainMenu() {
    String menu = '''
      
1 - List of Tasks
2 - Create new task
3 - Update task
4 - Delete task
(Type 0 to exit)      
    ''';

    print(menu);
  }

  void displayUpdateMenu() {
    String menu = '''
      
1 - update Tasks
2 - complete task
3 - uncomplete task
(Type 0 to exit)      
    ''';

    print(menu);
  }
}

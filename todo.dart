class Task {
  String? content;
  bool? status;

  Task(String content, bool status) {
    this.content = content;
    this.status = status;
  }

  updateTask() {}

  String? displayTask() {
    return this.status! ? "[v] ${this.content}" : "[ ] ${this.content}";
  }
}

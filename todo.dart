class TODO {
  String? content;
  bool? status;

  TODO(String content, bool status) {
    this.content = content;
    this.status  = status;
  }

  String? displayTask() {
    if (this.status == false) {
      return "${this.content} (incomplete)";
    } else {
      return "${this.content} (complete)";
    }
  }

}
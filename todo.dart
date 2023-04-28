class TODO {
  String? content;
  bool? status;

  TODO(String content, bool status) {
    this.content = content;
    this.status  = status;
  }

  String? displayNote() {
    if (this.status == false) {
      return this.content;
    } else {
      return null;
    }
  }

}
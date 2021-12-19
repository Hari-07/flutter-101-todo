class Event {
  String data;
  bool completed;
  Event({
    required this.data,
    this.completed = false,
  });

  void toggleCompleted() {
    completed = !completed;
  }

  String getData() {
    return data;
  }

  bool getCompleted() {
    return completed;
  }
}

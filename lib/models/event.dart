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

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        data: json['data'],
        completed: json['completed'],
      );

  Map<String, dynamic> toJson() => {
    'data': data,
    'completed': completed,
  };
}

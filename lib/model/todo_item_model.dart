class TodoItemModel {
  String title;
  String subTitle;
  String timeLeft;
  String day;
  String monthYear;
  String time;

  TodoItemModel({
    this.title,
    this.subTitle,
    this.timeLeft,
    this.day,
    this.monthYear,
    this.time,
  });

  factory TodoItemModel.fromJson(Map<String, dynamic> json) {
    return TodoItemModel(
      title: json['title'] as String,
      subTitle: json['subTitle'] as String,
      timeLeft: json['timeLeft'] as String,
      day: json['day'] as String,
      monthYear: json['monthYear'] as String,
      time: json['time'] as String,
    );
  }
}

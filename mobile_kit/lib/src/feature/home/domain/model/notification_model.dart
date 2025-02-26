class NotificationModel {
  NotificationModel({
    required this.createdDate,
    required this.title,
    required this.value,
  });

  final String value;
  final String title;
  final DateTime createdDate;
}

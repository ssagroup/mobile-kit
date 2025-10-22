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

class PaginatedNotificationModel {
  PaginatedNotificationModel({
    required this.models,
    required this.totalCount,
  });

  final List<NotificationModel> models;
  final int totalCount;
}

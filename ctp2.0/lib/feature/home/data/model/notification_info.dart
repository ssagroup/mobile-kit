import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_info.freezed.dart';
part 'notification_info.g.dart';

enum NotificationType { Informational, Error, Warning }

@freezed
class NotificationInfo with _$NotificationInfo {
  const factory NotificationInfo({
    required String title,
    required String text,
    required NotificationType type,
    required DateTime? readAt,
    required DateTime creationTime,
    required int id,
  }) = _NotificationInfo;

  factory NotificationInfo.fromJson(Map<String, dynamic> json) => _$NotificationInfoFromJson(json);
}
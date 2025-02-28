import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_kit/mobile_kit.dart';

class NotificationEntity {
  NotificationEntity({
    required this.createdDate,
    required this.title,
    required this.value,
  });

  final String value;
  final String title;
  final DateTime createdDate;

  factory NotificationEntity.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return NotificationEntity(
      title: data?['title'],
      value: data?['value'],
      createdDate: (data?['createdDate'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'title': title,
      'value': value,
      'createdDate': Timestamp.fromDate(createdDate),
    };
  }

  NotificationModel get notificationModel {
    return NotificationModel(
      title: title,
      value: value,
      createdDate: createdDate,
    );
  }
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_kit/mobile_kit.dart';

class InfrastructureDetailsEntity {
  InfrastructureDetailsEntity({
    required this.status,
    required this.title,
    required this.value,
    required this.order,
    required this.unit,
    required this.chartId,
  });

  final String status;
  final String value;
  final int order;
  final String title;
  final String? chartId;
  final String? unit;

  factory InfrastructureDetailsEntity.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return InfrastructureDetailsEntity(
      status: data?['status'],
      title: data?['title'],
      value: data?['value'],
      order: data?['order'],
      chartId: data?['chartId'],
      unit: data?['unit'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'status': status,
      'title': title,
      'value': value,
      'order': order,
      'chartId': chartId,
      'unit': unit,
    };
  }

  InfrastructureDetailsModel get infrastructureDetailsModel {
    return InfrastructureDetailsModel(
      status: status,
      title: title,
      value: value,
      order: order,
      chartId: chartId,
      unit: unit,
    );
  }
}

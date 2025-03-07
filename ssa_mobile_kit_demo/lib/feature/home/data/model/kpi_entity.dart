import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_kit/mobile_kit.dart';

class KpiEntity {
  KpiEntity({
    required this.isUp,
    required this.title,
    required this.value,
    required this.order,
    required this.unit,
    required this.chartId,
  });

  final bool? isUp;
  final String value;
  final int order;
  final String title;
  final String? chartId;
  final String? unit;

  factory KpiEntity.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return KpiEntity(
      isUp: data?['isUp'],
      value: data?['value'],
      order: data?['order'],
      title: data?['title'],
      chartId: data?['chartId'],
      unit: data?['unit'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'isUp': isUp,
      'value': value,
      'order': order,
      'title': title,
      'chartId': chartId,
      'unit': unit,
    };
  }

  KpiModel get kpiModel {
    return KpiModel(
      isUp: isUp,
      value: value,
      order: order,
      title: title,
      chartId: chartId,
      unit: unit,
    );
  }
}

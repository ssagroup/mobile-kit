import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_kit/mobile_kit.dart';

class InfrastructureEntity {
  InfrastructureEntity({
    required this.status,
    required this.title,
    required this.id,
    required this.order,
  });

  final String status;
  final String title;
  final String? id;
  final int order;

  factory InfrastructureEntity.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return InfrastructureEntity(
      status: data?['status'],
      title: data?['title'],
      id: data?['id'],
      order: data?['order'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'status': status,
      'title': title,
      'id': id,
      'order': order,
    };
  }

  InfrastructureModel toInfrastructureModel(String id) {
    return InfrastructureModel(status: InfrastructureStatusExtension.init(status), title: title, id: id, order: order);
  }
}

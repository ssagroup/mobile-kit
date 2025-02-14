import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_kit/mobile_kit.dart';

class InfrastructureEntity {
  InfrastructureEntity({
    required this.status,
    required this.title,
    required this.id,
  });

  final String status;
  final String title;
  final String id;

  factory InfrastructureEntity.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return InfrastructureEntity(
      status: data?['status'],
      title: data?['title'],
      id: data?['id'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'status': status,
      'title': title,
      'id': id,
    };
  }

  InfrastructureModel toInfrastructureModel(String id) {
    return InfrastructureModel(status: status, title: title, id: id);
  }
}

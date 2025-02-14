import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_kit/mobile_kit.dart';

class ControlEntity {
  ControlEntity({
    required this.id,
    required this.name,
    required this.status,
  });

  final int id;
  final String name;
  final String status;

  factory ControlEntity.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return ControlEntity(
      id: data?['id'],
      name: data?['name'],
      status: data?['status'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "name": name,
      "id": id,
      "status": status,
    };
  }

  ControlModel get controlModel {
    return ControlModel(
      id: id,
      name: name,
      status: ControlStatusExtension.init(status),
      isActionsDisabled: false,
    );
  }
}

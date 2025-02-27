import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_kit/mobile_kit.dart';

class UserEntity {
  UserEntity({
    required this.id,
    this.userName,
    this.pushToken,
  });

  final String id;
  final String? userName;
  final String? pushToken;

  factory UserEntity.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return UserEntity(
      id: data?['id'],
      userName: data?['userName'],
      pushToken: data?['pushToken']
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'userName': userName,
      'id': id,
      'pushToken': pushToken,
    };
  }

  UserModel get userModel {
    return UserModel(uid: id, userName: userName, pushToken: pushToken);
  }
}
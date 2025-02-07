import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_kit/mobile_kit.dart';

class UserEntity {
  UserEntity({
    required this.id,
    required this.userName,
    required this.email,
  });

  final String id;
  final String email;
  final String userName;

  factory UserEntity.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return UserEntity(
      id: data?['id'],
      userName: data?['userName'],
      email: data?['email'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'userName': userName,
      'id': id,
      'email': email,
    };
  }

  UserModel get userModel {
    return UserModel(uid: id, userName: userName, email: email);
  }
}
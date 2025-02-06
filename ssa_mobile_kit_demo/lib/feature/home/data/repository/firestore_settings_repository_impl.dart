import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit_demo/feature/home/data/model/user_entity.dart';

class FirestoreSettingsRepositoryImpl implements SettingsRepository {

  FirestoreSettingsRepositoryImpl({
    FirebaseFirestore? firebaseStore,
    FirebaseAuth? firebaseAuth,
  })  : _firebaseStoreInstance = firebaseStore ?? FirebaseFirestore.instance,
        _firebaseAuthInstance = firebaseAuth ?? FirebaseAuth.instance;

  final FirebaseFirestore _firebaseStoreInstance;
  final FirebaseAuth _firebaseAuthInstance;

  @override
  Future<Either<Failure, UserModel>> getUser() async {
    final uid = _firebaseAuthInstance.currentUser?.uid;
    final ref = _firebaseStoreInstance.collection("users").doc(uid).withConverter(
      fromFirestore: UserEntity.fromFirestore,
      toFirestore: (UserEntity user, _) => user.toFirestore(),
    );;
    final docSnapshot = await ref.get();
    final user = docSnapshot.data()?.userModel;
    if (user != null) {
      return Right<Failure, UserModel>(user) as Either<Failure, UserModel>;
    } else {
      return Left<Failure, UserModel>(Failure.unknown('No such document'));
    }
  }
}
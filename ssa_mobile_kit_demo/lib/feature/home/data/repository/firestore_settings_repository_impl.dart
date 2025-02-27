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
  Future<Either<Failure, UserModel?>> getUser() async {
    final authUser = _firebaseAuthInstance.currentUser;
    if (authUser == null) {
      return Left<Failure, UserModel?>(Failure.unknown('No such document'));
    }
    final ref = _firebaseStoreInstance.collection("users").doc(authUser.uid).withConverter(
          fromFirestore: UserEntity.fromFirestore,
          toFirestore: (UserEntity user, _) => user.toFirestore(),
        );
    final docSnapshot = await ref.get();
    var firestoreUser = docSnapshot.data()?.userModel;
    if (firestoreUser == null) {
      return Left<Failure, UserModel?>(Failure.unknown('No such document'));
    }
    firestoreUser = firestoreUser.copyWith(email: authUser.email.orEmpty);
    return Right<Failure, UserModel?>(firestoreUser) as Either<Failure, UserModel?>;
  }
}
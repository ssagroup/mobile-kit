import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit_demo/feature/home/data/model/control.dart';
import 'package:rxdart/rxdart.dart';

class FirestoreControlRepositoryImpl implements ControlRepository {
  FirestoreControlRepositoryImpl({
    FirebaseFirestore? firebaseStore,
    FirebaseAuth? firebaseAuth,
  })  : _firebaseStoreInstance = firebaseStore ?? FirebaseFirestore.instance,
        _firebaseAuthInstance = firebaseAuth ?? FirebaseAuth.instance;

  final FirebaseFirestore _firebaseStoreInstance;
  final FirebaseAuth _firebaseAuthInstance;

  @override
  Future<Either<Failure, List<ControlModel>>> getAll() async {
    final uid = _firebaseAuthInstance.currentUser?.uid;
    final ref = _firebaseStoreInstance.collection("users").doc(uid).collection("controls").withConverter(
          fromFirestore: ControlEntity.fromFirestore,
          toFirestore: (ControlEntity control, _) => control.toFirestore(),
        );
    final result = await ref.get().then(
      (querySnapshot) async {
        final controls = querySnapshot
            .docs
            .map((docSnapshot) => docSnapshot.data().controlModel)
            .toList();
        return Right<Failure, List<ControlModel>>(controls) as Either<Failure, List<ControlModel>>;
      },
    ).catchError((e) => Left<Failure, List<ControlModel>>(Failure.unknown(e)));
    return result;
  }

  @override
  Future<Either<Failure, void>> start(int id) async {
    return _toggleControl(id, 'Started');
  }

  @override
  Future<Either<Failure, void>> stop(int id) async {
    return _toggleControl(id, 'Stopped');
  }

  Future<Either<Failure, void>> _toggleControl(int id, String status) async {
    final batch = _firebaseStoreInstance.batch();
    final uid = _firebaseAuthInstance.currentUser?.uid;
    final result = await _firebaseStoreInstance
        .collection("users")
        .doc(uid)
        .collection("controls")
        .where("id", isEqualTo: id)
        .get()
        .then(
      (querySnapshot) async {
        for (var docSnapshot in querySnapshot.docs) {
          final docRef = docSnapshot.reference;
          batch.update(docRef, {"status": status});
        }
        batch.commit();
        return const Right<Failure, void>(unit) as Either<Failure, void>;
      },
    ).catchError((e) => Left(Failure.unknown(e)));
    return result;
  }

  @override
  Future<Either<Failure, void>> stopAll() async {
    final batch = _firebaseStoreInstance.batch();
    final uid = _firebaseAuthInstance.currentUser?.uid;
    final result = await _firebaseStoreInstance.collection("users").doc(uid).collection("controls").get().then(
      (querySnapshot) async {
        for (var docSnapshot in querySnapshot.docs) {
          final docRef = docSnapshot.reference;
          batch.update(docRef, {"status": "Stopped"});
        }
        batch.commit();
        return const Right<Failure, void>(unit) as Either<Failure, void>;
      },
    ).catchError((e) => Left(Failure.unknown(e)));
    return result;
  }

  @override
  void updateControls(List<ControlModel> controls) {
    _controlsSubject.add(controls);
  }

  @override
  List<ControlModel> get controls => _controlsSubject.value;

  @override
  Stream<List<ControlModel>> get controlsStream => _controlsSubject.stream;

  final _controlsSubject = BehaviorSubject<List<ControlModel>>();
}

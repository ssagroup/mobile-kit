import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit_demo/feature/home/data/model/infrastructure_details_entity.dart';
import 'package:mobile_kit_demo/feature/home/data/model/infrastructure_entity.dart';

class FirestoreInfrastructureRepositoryImpl implements InfrastructureRepository {
  FirestoreInfrastructureRepositoryImpl({
    FirebaseFirestore? firebaseStore,
    FirebaseAuth? firebaseAuth,
  })  : _firebaseStoreInstance = firebaseStore ?? FirebaseFirestore.instance,
        _firebaseAuthInstance = firebaseAuth ?? FirebaseAuth.instance;

  final FirebaseFirestore _firebaseStoreInstance;
  final FirebaseAuth _firebaseAuthInstance;

  @override
  Future<Either<Failure, List<InfrastructureModel>>> getAll() async {
    final uid = _firebaseAuthInstance.currentUser?.uid;
    final ref = _firebaseStoreInstance
        .collection("users")
        .doc(uid)
        .collection("infrastructure")
        .withConverter(
          fromFirestore: InfrastructureEntity.fromFirestore,
          toFirestore: (InfrastructureEntity infrastructure, _) => infrastructure.toFirestore(),
        );
    final result = await ref.get().then(
      (querySnapshot) async {
        final infrastructure = querySnapshot.docs.map((docSnapshot) {
          final id = docSnapshot.id;
          return (docSnapshot.data().toInfrastructureModel(id));
        }).toList();
        return Right<Failure, List<InfrastructureModel>>(infrastructure) as Either<Failure, List<InfrastructureModel>>;
      },
    ).catchError((e) => Left<Failure, List<InfrastructureModel>>(Failure.unknown(e)));
    return result;
  }

  @override
  Future<Either<Failure, List<InfrastructureDetailsModel>>> getDetails(String id, String filter) async {
    final uid = _firebaseAuthInstance.currentUser?.uid;
    final ref = _firebaseStoreInstance
        .collection("users")
        .doc(uid)
        .collection("infrastructure")
        .doc(id)
        .collection(filter)
        .withConverter(
          fromFirestore: InfrastructureDetailsEntity.fromFirestore,
          toFirestore: (InfrastructureDetailsEntity details, _) => details.toFirestore(),
        );
    final result = await ref.get().then(
      (querySnapshot) async {
        final details = querySnapshot.docs.map((docSnapshot) => docSnapshot.data().infrastructureDetailsModel).toList();
        return Right<Failure, List<InfrastructureDetailsModel>>(details)
            as Either<Failure, List<InfrastructureDetailsModel>>;
      },
    ).catchError((e) => Left<Failure, List<InfrastructureDetailsModel>>(Failure.unknown(e)));
    return result;
  }
}

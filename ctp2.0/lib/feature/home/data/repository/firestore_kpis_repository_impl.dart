import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ctp_mobile/feature/home/data/model/kpi_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile_kit/mobile_kit.dart';

class FirestoreKpiRepositoryImpl implements KpiRepository {
  FirestoreKpiRepositoryImpl({
    FirebaseFirestore? firebaseStore,
    FirebaseAuth? firebaseAuth,
  })  : _firebaseStoreInstance = firebaseStore ?? FirebaseFirestore.instance,
        _firebaseAuthInstance = firebaseAuth ?? FirebaseAuth.instance;

  final FirebaseFirestore _firebaseStoreInstance;
  final FirebaseAuth _firebaseAuthInstance;

  @override
  Future<Either<Failure, List<KpiModel>>> getAll(String filter) async {
    final uid = _firebaseAuthInstance.currentUser?.uid;
    final ref = _firebaseStoreInstance
        .collection("users")
        .doc(uid)
        .collection("kpis")
        .doc(filter)
        .collection("objects")
        .withConverter(
          fromFirestore: KpiEntity.fromFirestore,
          toFirestore: (KpiEntity kpi, _) => kpi.toFirestore(),
        );
    final result = await ref.get().then(
      (querySnapshot) async {
        final kpis = querySnapshot.docs.map((docSnapshot) => docSnapshot.data().kpiModel).toList();
        return Right<Failure, List<KpiModel>>(kpis) as Either<Failure, List<KpiModel>>;
      },
    ).catchError((e) => Left<Failure, List<KpiModel>>(Failure.unknown(e)));
    return result;
  }
}

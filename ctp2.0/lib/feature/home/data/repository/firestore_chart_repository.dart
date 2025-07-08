import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ctp_mobile/feature/home/data/model/chart_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_kit/mobile_kit.dart';

class FirestoreChartRepositoryImpl implements ChartRepository {
  FirestoreChartRepositoryImpl({
    FirebaseFirestore? firebaseStore,
  }) : _firebaseStoreInstance = firebaseStore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firebaseStoreInstance;

  @override
  Future<Either<Failure, ChartModel?>> getChartInfo(String? chartId) async {
    final chartRef = _firebaseStoreInstance.collection("charts").doc(chartId).withConverter(
          fromFirestore: ChartEntity.fromFirestore,
          toFirestore: (ChartEntity entity, _) => entity.toFirestore(),
        );

    final docSnapshot = await chartRef.get();
    final id = docSnapshot.id;
    var chart = docSnapshot.data()?.toChartModel(id);

    final ref = _firebaseStoreInstance.collection("charts").doc(chartId).collection("points").withConverter(
          fromFirestore: ChartPointEntity.fromFirestore,
          toFirestore: (ChartPointEntity entity, _) => entity.toFirestore(),
        );

    final result = await ref.get().then(
      (querySnapshot) async {
        final points = querySnapshot.docs.map((docSnapshot) => docSnapshot.data().chartPointModel).first;
        chart = chart?.copyWith(points: points);
        return Right<Failure, ChartModel?>(chart) as Either<Failure, ChartModel?>;
      },
    ).catchError((e) => Left<Failure, ChartModel?>(Failure.unknown(e)));
    return result;
  }
}

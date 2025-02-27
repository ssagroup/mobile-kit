import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit_demo/feature/home/data/model/notification_entity.dart';
import 'package:mobile_kit_demo/feature/home/data/model/user_entity.dart';
import 'package:rxdart/rxdart.dart';

class FirestoreAlertsRepositoryImpl implements AlertsRepository {
  FirestoreAlertsRepositoryImpl({
    FirebaseFirestore? firebaseStore,
    FirebaseAuth? firebaseAuth,
    required NotificationsLocalDatasource localDatasource,
  })  : _firebaseStoreInstance = firebaseStore ?? FirebaseFirestore.instance,
        _firebaseAuthInstance = firebaseAuth ?? FirebaseAuth.instance,
        _localDatasource = localDatasource;

  final FirebaseFirestore _firebaseStoreInstance;
  final FirebaseAuth _firebaseAuthInstance;
  final NotificationsLocalDatasource _localDatasource;

  @override
  Future<Either<Failure, List<NotificationModel>>> fetchNotifications() async {
    final uid = _firebaseAuthInstance.currentUser?.uid;
    final ref = _firebaseStoreInstance.collection("users").doc(uid).collection("alerts").withConverter(
          fromFirestore: NotificationEntity.fromFirestore,
          toFirestore: (NotificationEntity notification, _) => notification.toFirestore(),
        );
    final result = await ref.get().then(
      (querySnapshot) async {
        final notifications = querySnapshot.docs.map((docSnapshot) => docSnapshot.data().notificationModel).toList();
        return Right<Failure, List<NotificationModel>>(notifications) as Either<Failure, List<NotificationModel>>;
      },
    ).catchError((e) => Left<Failure, List<NotificationModel>>(Failure.unknown(e)));
    return result;
  }

  @override
  Future<Either<Failure, void>> updatePushToken(String? pushToken) async {
    final uid = _firebaseAuthInstance.currentUser?.uid;
    final result = _firebaseStoreInstance.collection("users").doc(uid).withConverter(
      fromFirestore: UserEntity.fromFirestore,
      toFirestore: (UserEntity user, _) => user.toFirestore(),
    ).get()
    .then((docSnapshot) async {
      final batch = _firebaseStoreInstance.batch();
      final docRef = docSnapshot.reference;
      batch.update(docRef, {"pushToken": pushToken});
      batch.commit();
      return const Right<Failure, void>(unit) as Either<Failure, void>;
    }).catchError((e) => Left(Failure.unknown(e)));
    return result;
  }

  final _notificationsSubject = BehaviorSubject<List<NotificationModel>>();

  @override
  Stream<List<NotificationModel>> get notificationStream => _notificationsSubject.stream;

  @override
  Stream<Unit> get pushMessageStream => _localDatasource.pushMessage;

  @override
  void updateNotifications(List<NotificationModel> notifications) {
    _notificationsSubject.add(notifications);
  }

  @override
  Future<void> requestPushNotificationToken() async {
    _localDatasource.askForPermissions();
  }

  @override
  Stream<String?> get pushTokenStream => _localDatasource.pushToken;

}

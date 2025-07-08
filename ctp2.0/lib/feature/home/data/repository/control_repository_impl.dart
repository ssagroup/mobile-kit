import 'dart:async';

import 'package:collection/collection.dart';
import 'package:ctp_mobile/core/repository/base_repository.dart';
import 'package:ctp_mobile/feature/home/data/datasource/remote/control_remote_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_kit/mobile_kit.dart';

class ControlRepositoryImpl with BaseRepositoryMixin implements ControlRepository {
  ControlRepositoryImpl({
    required ControlRemoteDatasourceImpl remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final ControlRemoteDatasourceImpl _remoteDataSource;

  Stream<bool> get isFetching => _remoteDataSource.isFetching;

  @override
  List<ControlModel> get controls => _controlsSubject.value;

  @override
  Stream<List<ControlModel>> get controlsStream => _controlsSubject.stream;

  final _controlsSubject = BehaviorSubject<List<ControlModel>>();

  @override
  Future<Either<Failure, List<ControlModel>>> getAll() async {
    _controlsSubject.add([]);

    return await getGenericDataWithCaching<List<ControlModel>>(remote: () async {
      final controls = await _remoteDataSource.getControls();
      return controls.map((e){
        return ControlModel(
          id: e.id,
          name: e.name,
          status: ControlStatusExtension.create(e.isRunning),
          isActionsDisabled: false,
        );
      }).toList();
    }, cacheLocal: (response) {
      _controlsSubject.add(response);
      return Future.value();
    });
  }

  @override
  Future<Either<Failure, void>> start(int id) async {
    final controls = _controlsSubject.value.toList();
    var control = controls.firstWhereOrNull((element) => element.id == id);

    control = control?.copyWith(isActionsDisabled: true);
    if(control != null) {
      controls.removeWhere((element) => element.id == id);
      controls.add(control);
    }
    _controlsSubject.add(controls);

    final result = await performSuccessOperation(
      remote: () => _remoteDataSource.startBot(id),
    );

    control = control?.copyWith(isActionsDisabled: false);
    result.ifRight((_) {
      control = control?.copyWith(status: ControlStatus.started);
    });
    if(control != null) {
      controls.removeWhere((element) => element.id == id);
      controls.add(control!);
    }
    _controlsSubject.add(controls);
    return result;
  }

  @override
  Future<Either<Failure, void>> stop(int id) async {
    final controls = _controlsSubject.value.toList();
    var control = controls.firstWhereOrNull((element) => element.id == id);

    control = control?.copyWith(isActionsDisabled: true);
    if(control != null) {
      controls.removeWhere((element) => element.id == id);
      controls.add(control);
    }
    _controlsSubject.add(controls);

    final result = await performSuccessOperation(
      remote: () => _remoteDataSource.stopBot(id),
    );

    control = control?.copyWith(isActionsDisabled: false);
    result.ifRight((_) {
      control = control?.copyWith(status: ControlStatus.stopped);
    });
    if(control != null) {
      controls.removeWhere((element) => element.id == id);
      controls.add(control!);
    }
    _controlsSubject.add(controls);
    return result;
  }

  @override
  Future<Either<Failure, void>> stopAll() async {
    var bots = _controlsSubject.value;
    bots = bots.map((element) {
      if (element.status == ControlStatus.started) {
        return element.copyWith(isActionsDisabled: true);
      } else {
        return element;
      }
    }).toList();

    _controlsSubject.add(bots);

    final result = await performSuccessOperation(
      remote: _remoteDataSource.stopAll,
    );

    bots = bots.map((element) {
      return element.copyWith(isActionsDisabled: false);
    }).toList();

    result.ifRight((_) {
      bots = bots.map((element) {
        return element.copyWith(status: ControlStatus.stopped);
      }).toList();
    });
    _controlsSubject.add(bots);
    return result;
  }

  @override
  void updateControls(List<ControlModel> controls) {
    _controlsSubject.add(controls);
  }
}

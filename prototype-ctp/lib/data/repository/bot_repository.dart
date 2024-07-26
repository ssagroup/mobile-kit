import 'package:collection/collection.dart';
import 'package:ctp_mobile/api/response/bot_response.dart';
import 'package:ctp_mobile/api/response/dynamic_statistic_response.dart';
import 'package:ctp_mobile/api/response/static_statistic_response.dart';
import 'package:ctp_mobile/api/response/style.dart';
import 'package:ctp_mobile/data/datasource/bot_remote_datasource.dart';
import 'package:ctp_mobile/data/repository/base_repository.dart';
import 'package:ctp_mobile/domain/bot/statistic_period_enum.dart';
import 'package:ctp_mobile/domain/failure/failure.dart';
import 'package:ctp_mobile/util/either_extension.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

class BotRepositoryImpl with BaseRepositoryMixin {
  BotRepositoryImpl({
    required BotRemoteDatasourceImpl remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final BotRemoteDatasourceImpl _remoteDataSource;

  final _botsSubject = BehaviorSubject<List<BotInfo>>();

  Stream<bool> get isFetching => _remoteDataSource.isFetching;

  Stream<List<BotInfo>> get bots => _botsSubject.stream;

  Future<Either<Failure, void>> fetchBots(StatisticsPeriod period) async {

    _botsSubject.add([]);

    final result = await getGenericDataWithCaching<List<BotInfo>>(
        remote: () async {
          final bots = await _remoteDataSource.getBots(period);
          return bots.sortedByName;
        },
        cacheLocal: (response) {
          _botsSubject.add(response);
          return Future.value();
        });
    return result;
  }

  Future<Either<Failure, DynamicStatisticsInfo>> fetchDynamicStatistics(StatisticsPeriod period) async {
    final result = await getGenericDataWithoutCaching<DynamicStatisticsInfo>(
      remote: () => _remoteDataSource.getDynamicStatistic(period),
    );
    return result;
  }

  Future<Either<Failure, StaticStatisticsInfo>> fetchStaticStatistics() async {
    final result = await getGenericDataWithoutCaching<StaticStatisticsInfo>(
      remote: () => _remoteDataSource.getStaticStatistic(),
    );
    return result;
  }

  Future<Either<Failure, StyleInfo>> fetchStyles() async {
    final result = await getGenericDataWithoutCaching<StyleInfo>(
      remote: () => _remoteDataSource.getStyles(),
    );
    return result;
  }

  Future<Either<Failure, void>> startBot(int id) async {
    final bots = _botsSubject.value.toList();
    var bot = bots.firstWhereOrNull((element) => element.id == id);

    bot = bot?.copyWith(isActionsDisabled: true);
    if(bot != null) {
      bots.removeWhere((element) => element.id == id);
      bots.add(bot);
    }
    _botsSubject.add(bots.sortedByName);

    final result = await performSuccessOperation(
      remote: () => _remoteDataSource.startBot(id),
    );

    bot = bot?.copyWith(isActionsDisabled: false);
    result.ifRight((_) {
      bot = bot?.copyWith(isRunning: true);
    });
    if(bot != null) {
      bots.removeWhere((element) => element.id == id);
      bots.add(bot!);
    }
    _botsSubject.add(bots.sortedByName);
    return result;
  }

  Future<Either<Failure, void>> stopBot(int id) async {
    final bots = _botsSubject.value.toList();
    var bot = bots.firstWhereOrNull((element) => element.id == id);

    bot = bot?.copyWith(isActionsDisabled: true);
    if(bot != null) {
      bots.removeWhere((element) => element.id == id);
      bots.add(bot);
    }
    _botsSubject.add(bots.sortedByName);

    final result = await performSuccessOperation(
      remote: () => _remoteDataSource.stopBot(id),
    );

    bot = bot?.copyWith(isActionsDisabled: false);
    result.ifRight((_) {
      bot = bot?.copyWith(isRunning: false);
    });
    if(bot != null) {
      bots.removeWhere((element) => element.id == id);
      bots.add(bot!);
    }
    _botsSubject.add(bots.sortedByName);
    return result;
  }

  Future<Either<Failure, void>> stopAll() async {

      var bots = _botsSubject.value;
      bots = bots.map((element) {
        if (element.isRunning) {
          return element.copyWith(isActionsDisabled: true);
        } else {
          return element;
        }
      }).toList();

      _botsSubject.add(bots.sortedByName);

      final result = await performSuccessOperation(
        remote: _remoteDataSource.stopAll,
      );

      bots = bots.map((element) {
        return element.copyWith(isActionsDisabled: false);
      }).toList();

      result.ifRight((_) {
        bots = bots.map((element) {
          return element.copyWith(isRunning: false);
        }).toList();
      });
      _botsSubject.add(bots.sortedByName);
      return result;
  }

  Future<void> clear() async {
    _botsSubject.add([]);
  }
}

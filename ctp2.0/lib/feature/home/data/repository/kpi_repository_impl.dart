import 'package:ctp_mobile/core/repository/base_repository.dart';
import 'package:ctp_mobile/feature/home/data/datasource/remote/kpi_remote_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_kit/mobile_kit.dart';

class KpiRepositoryImpl with BaseRepositoryMixin implements KpiRepository {
  KpiRepositoryImpl({
    required KpiRemoteDatasourceImpl remoteDatasource,
  }) : _remoteDatasource = remoteDatasource;

  final KpiRemoteDatasourceImpl _remoteDatasource;
  Stream<bool> get isFetching => _remoteDatasource.isFetching;

  @override
  Future<Either<Failure, List<KpiModel>>> getAll(String filter) async {
    return await getGenericDataWithoutCaching<List<KpiModel>>(remote: () async {
      final kpi = await _remoteDatasource.getKpis(filter);
      final List<KpiModel> models = [
        KpiModel(title: 'Exchanges', value: kpi.exchangesCount.toString(), order: 0),
        KpiModel(title: 'Accounts', value: kpi.accountsCount.toString(), order: 1),
        KpiModel(title: 'Matched Orders', value: kpi.matchedOrders, order: 2),
        KpiModel(title: 'Total Orders', value: kpi.allOrders, order: 3),
        KpiModel(title: 'Turnover', value: kpi.turnover, order: 4, unit: 'USDT'),
        KpiModel(title: 'Errors', value: kpi.errorsCount.toString(), order: 5),
        KpiModel(title: 'Commission', value: kpi.commission.toString(), order: 6, unit: 'USDT'),
        KpiModel(title: 'PNL Trading', value: kpi.pnl.toString(), order: 7, isUp: kpi.pnlUp, unit: 'USDT', chartId: 'kpi://pnl'),
        KpiModel(title: 'PNL investment', value: kpi.pnlInvestment.toString(), order: 8, isUp: kpi.pnlInvestmentUp, unit: 'USDT', chartId: 'kpi://pnlInvestment'),
        KpiModel(title: 'PNL total', value: kpi.pnlTotal.toString(), order: 9, isUp: kpi.pnlTotalUp, unit: 'USDT', chartId: 'kpi://pnlTotal'),
        KpiModel(title: 'ROI trading', value: kpi.roi.toString(), order: 10, unit: '%'),
        KpiModel(title: 'ROI investment', value: kpi.roiInvestment.toString(), order: 11),
        KpiModel(title: 'ROI total', value: kpi.roiTotal.toString(), order: 12, unit: '%'),
      ];
      return models;
    });
  }
}

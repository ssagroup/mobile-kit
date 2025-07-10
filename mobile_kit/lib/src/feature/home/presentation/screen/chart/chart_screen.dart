import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_kit/src/core/util/api_status_failure_messenger.dart';
import 'package:mobile_kit/src/core/widget/app_bar_widget.dart';
import 'package:mobile_kit/src/core/widget/chart_widget.dart';
import 'package:mobile_kit/src/core/widget/progress_indicator.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/statistic_period_enum.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/chart_repository.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_chart_info_usecase.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/chart/bloc/chart_cubit.dart';
import 'package:mobile_kit/src/core/util/optional.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/chart/bloc/chart_datasource.dart';

class ChartScreenSettings {
  ChartScreenSettings(this.chartId, this.title, this.periodFilter);

  final String? chartId;
  final String title;
  final StatisticsPeriod periodFilter;
}

class ChartScreen extends StatefulWidget {
  ChartScreen(ChartScreenSettings settings, {Key? key})
      : _chartId = settings.chartId,
        _title = settings.title,
        _periodFilter = settings.periodFilter,
        super(key: key);

  final String? _chartId;
  final String _title;
  final StatisticsPeriod _periodFilter;

  @override
  State createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  late final ChartCubit _bloc;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);

    final getChartInfoUseCase =
        GetChartInfoUseCase(GetIt.instance<ChartRepository>(), widget._chartId, widget._periodFilter);
    _bloc = ChartCubit(
      getChartInfoUseCase,
    )..initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (_, __) {
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      },
      child: Scaffold(
        appBar: AppBarWidget(
          title: Text(
            widget._title,
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SafeArea(
          child: BlocConsumer<ChartCubit, ChartState>(
            listener: showFailure,
            bloc: _bloc,
            builder: (context, state) {
              return FullScreenProgressIndicator(
                isLoading: state.isLoading,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        state.unit.orEmpty,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                        child: state.x != null && state.y != null
                            ? LineChartWidget(
                                datasource: ChartDatasource(state.x!, state.y!, widget._periodFilter),
                              )
                            : Container(),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

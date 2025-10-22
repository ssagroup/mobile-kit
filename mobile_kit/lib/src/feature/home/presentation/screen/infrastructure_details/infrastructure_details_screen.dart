import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/router/router.dart';
import 'package:mobile_kit/src/core/util/api_status_failure_messenger.dart';
import 'package:mobile_kit/src/core/widget/app_bar_widget.dart';
import 'package:mobile_kit/src/core/widget/grid_item_widget.dart';
import 'package:mobile_kit/src/core/widget/no_data_widget.dart';
import 'package:mobile_kit/src/core/widget/progress_indicator.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/infrastructure_status_enum.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/statistic_period_enum.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/infrastructure_repository.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_infrastructure_details_usecase.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/chart/chart_screen.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/infrastructure_details/bloc/infrastructure_details_cubit.dart';

class InfrastructureDetailsScreen extends StatefulWidget {
  InfrastructureDetailsScreen(this.title, this.id, {Key? key});

  final String title;
  final String id;

  @override
  _InfrastructureDetailsScreenState createState() => _InfrastructureDetailsScreenState();
}

class _InfrastructureDetailsScreenState extends State<InfrastructureDetailsScreen> {
  late final InfrastructureDetailsCubit _bloc;

  @override
  void initState() {
    super.initState();
    final getInfrastructureUseCase =
        GetInfrastructureDetailsUseCase(GetIt.instance<InfrastructureRepository>(), widget.id);
    _bloc = InfrastructureDetailsCubit(
      getInfrastructureUseCase,
    )..initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: BlocConsumer<InfrastructureDetailsCubit, InfrastructureDetailsState>(
        listener: showFailure,
        bloc: _bloc,
        builder: (context, state) {
          return Column(
            children: [
              _buildTopSection(state),
              Expanded(
                child: FullScreenProgressIndicator(
                  isLoading: state.isLoading,
                  child: RefreshIndicator(
                    onRefresh: () => _bloc.refresh(),
                    child: CustomScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      slivers: [
                        if (state.models.isEmpty) ...[
                          const SliverToBoxAdapter(
                            child: SizedBox(
                              height: 100,
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: NoDataWidget(title: AppLocalizations.of(context)!.noDataTitle),
                          ),
                        ] else
                          SliverPadding(
                            padding: EdgeInsets.all(16),
                            sliver: SliverGrid.builder(
                              itemBuilder: (BuildContext context, int index) {
                                final item = state.models[index];
                                return GestureDetector(
                                  onTap: item.chartId == null
                                      ? null
                                      : () {
                                          final settings = ChartScreenSettings(
                                            item.chartId,
                                            item.title,
                                            state.periodFilter,
                                            item.dashboardUid,
                                          );
                                          context.goNamed(infrastructureChartRouteName,
                                              extra: settings,
                                              queryParameters: {'title': widget.title, 'id': widget.id});
                                        },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: ColorPalette.grayBackground,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GridItem(
                                        itemValue: item.value,
                                        itemTitle: item.title,
                                        unit: item.unit,
                                        showChart: item.chartId?.isNotEmpty,
                                        textColor: item.status?.color,
                                        assetName: item.status?.assetName,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              itemCount: state.models.length,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                mainAxisExtent: 60,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildTopSection(InfrastructureDetailsState state) {
    return Container(
      color: ColorPalette.grayBackground,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: _buildSegmentedControl(state),
      ),
    );
  }

  Widget _buildSegmentedControl(InfrastructureDetailsState state) {
    return Builder(builder: (context) {
      return CupertinoSegmentedControl<StatisticsPeriod>(
        children: _segmentedWidgetList(context, state.periodFilter),
        onValueChanged: _bloc.segmentChanged,
        groupValue: state.periodFilter,
        selectedColor: ColorPalette.grayControl,
        borderColor: ColorPalette.grayControl,
      );
    });
  }

  Map<StatisticsPeriod, Widget> _segmentedWidgetList(BuildContext context, StatisticsPeriod period) {
    final dictionary = <StatisticsPeriod, Widget>{};
    for (final element in [
      StatisticsPeriod.one_hour,
      StatisticsPeriod.six_hours,
      StatisticsPeriod.day,
      StatisticsPeriod.week,
      StatisticsPeriod.month,
    ]) {
      dictionary[element] = Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        width: double.maxFinite,
        child: Text(
          element.uiValue(context),
          textAlign: TextAlign.center,
          style: element == period
              ? const TextStyle(color: ColorPalette.grayText, fontSize: 13)
              : TextStyle(color: ColorPalette.lightGrayText, fontSize: 13),
        ),
      );
    }
    return dictionary;
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }
}

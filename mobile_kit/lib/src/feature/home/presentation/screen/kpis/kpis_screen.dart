import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/util/api_status_failure_messenger.dart';
import 'package:mobile_kit/src/core/widget/app_bar_widget.dart';
import 'package:mobile_kit/src/core/widget/grid_item_widget.dart';
import 'package:mobile_kit/src/core/widget/no_data_widget.dart';
import 'package:mobile_kit/src/core/widget/progress_indicator.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/statistic_period_enum.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/kpi_repository.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_all_kpis_usecase.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/kpis/bloc/kpis_cubit.dart';
import 'package:mobile_kit/src/feature/login/domain/model/auth_status.dart';

class KpisScreen extends StatefulWidget {
  const KpisScreen({Key? key}) : super(key: key);

  @override
  _KpisScreenState createState() => _KpisScreenState();
}

class _KpisScreenState extends State<KpisScreen> {
  late final KpisCubit _bloc;

  @override
  void initState() {
    super.initState();
    final getAllKpisUseCase = GetAllKpisUseCase(GetIt.instance<KpiRepository>());
    _bloc = KpisCubit(
      getAllKpisUseCase,
    )..initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Text(
          AppLocalizations.of(context)!.kpisTitle,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: BlocConsumer<KpisCubit, KpisState>(
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
                            padding: const EdgeInsets.all(16.0),
                            sliver: SliverGrid.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                mainAxisExtent: 60,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                final item = state.models[index];
                                return GestureDetector(
                                  onTap: () => {},
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
                                        isUp: item.isUp,
                                        showChart: item.chartId?.isNotEmpty,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              itemCount: state.models.length,
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

  Widget _buildTopSection(KpisState state) {
    return Container(
      color: ColorPalette.grayBackground,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: _buildSegmentedControl(state),
      ),
    );
  }

  Widget _buildSegmentedControl(KpisState state) {
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
      StatisticsPeriod.day,
      StatisticsPeriod.week,
      StatisticsPeriod.month,
      StatisticsPeriod.year
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

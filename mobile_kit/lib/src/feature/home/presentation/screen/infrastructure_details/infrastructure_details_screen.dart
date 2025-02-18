import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/widget/app_bar_widget.dart';
import 'package:mobile_kit/src/core/widget/grid_item_widget.dart';
import 'package:mobile_kit/src/core/widget/progress_indicator.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/infrastructure_status_enum.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/statistic_period_enum.dart';
import 'package:mobile_kit/src/feature/home/domain/model/infrastructure_model.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/infrastructure_repository.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_infrastructure_details_usecase.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/infrastructure_details/bloc/infrastructure_details_cubit.dart';

class InfrastructureDetailsScreen extends StatefulWidget {
  InfrastructureDetailsScreen(InfrastructureModel model, {Key? key})
      : title = model.title,
        id = model.id,
        super(key: key);

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
        listener: (context, state) {
          state.apiStatus.whenOrNull(failure: (String message) async {
            final snackBar = SnackBar(
              content: Text(
                message,
              ),
            );
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(snackBar);
          });
        },
        bloc: _bloc,
        builder: (context, state) {
          return Column(
            children: [
              _buildTopSection(),
              FullScreenProgressIndicator(
                isLoading: state.isLoading,
                child: RefreshIndicator(
                  onRefresh: () => _bloc.refresh(),
                  child: _buildItems(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildTopSection() {
    return Container(
      color: ColorPalette.grayBackground,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: _buildSegmentedControl(),
      ),
    );
  }

  Widget _buildSegmentedControl() {
    return Builder(builder: (context) {
      return CupertinoSegmentedControl<StatisticsPeriod>(
        children: _segmentedWidgetList(context, _bloc.state.periodFilter),
        onValueChanged: _bloc.segmentChanged,
        groupValue: _bloc.state.periodFilter,
        selectedColor: ColorPalette.grayControl,
        borderColor: ColorPalette.grayControl,
      );
    });
  }

  Widget _buildItems() {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      clipBehavior: Clip.none,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildCollection(),
      ),
    );
  }

  Widget _buildCollection() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8, mainAxisExtent: 60),
      itemCount: _bloc.state.models.length,
      itemBuilder: (context, index) {
        final item = _bloc.state.models[index];
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
                showChart: item.chartId?.isNotEmpty,
                textColor: item.type.color,
              ),
            ),
          ),
        );
      },
    );
  }

  Map<StatisticsPeriod, Widget> _segmentedWidgetList(BuildContext context, StatisticsPeriod period) {
    final dictionary = <StatisticsPeriod, Widget>{};
    for (final element in [
      StatisticsPeriod.current,
      StatisticsPeriod.one_hour,
      StatisticsPeriod.three_hours,
      StatisticsPeriod.six_hours,
      StatisticsPeriod.twelve_hours,
      StatisticsPeriod.day
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
}

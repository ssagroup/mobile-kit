import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/widget/app_bar_widget.dart';
import 'package:mobile_kit/src/core/widget/progress_indicator.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/statistic_period_enum.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/kpis/bloc/kpis_cubit.dart';

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
    _bloc = KpisCubit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<KpisCubit, KpisState>(
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
          return Scaffold(
            appBar: AppBarWidget(
              title: Text(
                AppLocalizations.of(context)!.kpisTitle,
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: FullScreenProgressIndicator(
              isLoading: state.isLoading,
              child: RefreshIndicator(
                onRefresh: () => _bloc.refresh(),
                child: _buildBody(),
              ),
            ),
          );
        },
      ),
    );
  }
// SliverSafeArea(
//             sliver: SliverList(
//               delegate: SliverChildBuilderDelegate(
//                 (context, index) {
//                   return BotListCard(
//                     botInfo: bots[index],
//                     styleInfo: styleInfo,
//                     onPressAction: _bloc.pauseRunBotAction,
//                     key: UniqueKey(),
//                   );
//                 },
//                 childCount: bots.length,
//               ),
//             ),
//           ),
  Widget _buildBody() {
    return CustomScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildSegmentedControl(),
                // Container(color: Colors.yellow,),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSegmentedControl() {
    return Builder(builder: (context) {
      return CupertinoSegmentedControl<StatisticsPeriod>(
        children: _segmentedWidgetList(_bloc.state.periodFilter),
        onValueChanged: _bloc.segmentChanged,
        groupValue: _bloc.state.periodFilter,
        selectedColor: ColorPalette.grayIcon,
        borderColor: ColorPalette.grayIcon,
      );
    });
  }

  Map<StatisticsPeriod, Widget> _segmentedWidgetList(StatisticsPeriod period) {
    final dictionary = <StatisticsPeriod, Widget>{};
    for (final element in StatisticsPeriod.values) {
      dictionary[element] = Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: Text(
          element.uiValue,
          style: element == period
              ? const TextStyle(color: Colors.black, fontSize: 13)
              : TextStyle(color: ColorPalette.grayText, fontSize: 13),
        ),
      );
    }
    return dictionary;
  }
}
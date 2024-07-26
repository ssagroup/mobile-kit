import 'package:ctp_mobile/api/response/dynamic_statistic_response.dart';
import 'package:ctp_mobile/api/response/static_statistic_response.dart';
import 'package:ctp_mobile/api/response/style.dart';
import 'package:ctp_mobile/domain/bot/bot_dynamic_statistic_enum.dart';
import 'package:ctp_mobile/domain/bot/bot_static_statistic_enum.dart';
import 'package:ctp_mobile/domain/bot/statistic_period_enum.dart';
import 'package:ctp_mobile/presentation/resources/colors.dart';
import 'package:ctp_mobile/presentation/ui/main/bot/screen/bot_list_card.dart';
import 'package:ctp_mobile/presentation/ui/widget/vertical_divider_widget.dart';
import 'package:flutter/material.dart';

const String _fontFamilyName = 'Manrope';

class BotStatisticSection extends StatefulWidget {
  final StaticStatisticsInfo staticInfo;
  final DynamicStatisticsInfo dynamicInfo;
  final StyleInfo styles;

  const BotStatisticSection(this.staticInfo, this.dynamicInfo, this.styles, {super.key});

  @override
  State<StatefulWidget> createState() => BotStatisticSectionState(staticInfo, dynamicInfo, styles);
}

class BotStatisticSectionState extends State<BotStatisticSection> {
  final StaticStatisticsInfo staticInfo;
  final DynamicStatisticsInfo dynamicInfo;
  final StyleInfo styles;

  BotStatisticSectionState(this.staticInfo, this.dynamicInfo, this.styles);

  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashFactory: NoSplash.splashFactory,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: ExpansionPanelList(
        expandedHeaderPadding: EdgeInsets.zero,
        elevation: 0,
        expansionCallback: (_, isExpanded) {
          setState(() {
            this.isExpanded = isExpanded;
          });
        },
        children: [
          ExpansionPanel(
            canTapOnHeader: true,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text('Account', style: TextStyle(color: Colors.black)),
                ),
              );
            },
            body: statisticTable(),
            isExpanded: isExpanded,
          ),
        ],
      ),
    );
  }

  Widget statisticTable() {
    final showNoControlDynamic = dynamicInfo.showNoControl;
    final showNoControlStatic = staticInfo.showNoControl;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      child: IntrinsicHeight(
        child: Table(
          // border: TableBorder(verticalInside: BorderSide(strokeAlign: BorderSide.strokeAlignCenter)),
          columnWidths: const {
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(),
            2: IntrinsicColumnWidth(),
            3: FlexColumnWidth(),
            4: IntrinsicColumnWidth(),
          },
          children: [
            TableRow(children: [
              _buildStaticStatsColumn(info: staticInfo, parameter: BotStaticStatisticParameter.runningBots),
              const AppVerticalDivider(),
              _buildStaticStatsColumn(info: staticInfo, parameter: BotStaticStatisticParameter.tradingTime),
              const AppVerticalDivider(),
              _buildStaticStatsColumn(info: staticInfo, parameter: BotStaticStatisticParameter.balance),
            ]),
            tableRowSpacer(count: 5, height: 10),
            TableRow(children: [
              _buildStaticStatsColumn(info: staticInfo, parameter: BotStaticStatisticParameter.available),
              const AppVerticalDivider(),
              _buildStaticStatsColumn(info: staticInfo, parameter: BotStaticStatisticParameter.currentlyInUse),
              const AppVerticalDivider(),
              showNoControlStatic
                  ? _buildStaticStatsColumn(info: staticInfo, parameter: BotStaticStatisticParameter.nc)
                  : Container(),
            ]),
            tableRowSpacer(count: 5, height: 4),
            TableRow(
              children: List.generate(5, (index) {
                return const Divider(color: ColorPalette.grayFont);
              }),
            ),
            tableRowSpacer(count: 5, height: 4),
            TableRow(children: [
              _buildDynamicStatsColumn(info: dynamicInfo, parameter: BotDynamicStatisticParameter.turnover),
              const AppVerticalDivider(),
              _buildDynamicStatsColumn(info: dynamicInfo, parameter: BotDynamicStatisticParameter.cumulativePNL),
              const AppVerticalDivider(),
              _buildDynamicStatsColumn(info: dynamicInfo, parameter: BotDynamicStatisticParameter.roi),
            ]),
            tableRowSpacer(count: 5, height: 5),
            TableRow(children: [
              _buildDynamicStatsColumn(info: dynamicInfo, parameter: BotDynamicStatisticParameter.bankTurnover),
              const AppVerticalDivider(),
              _buildDynamicStatsColumn(info: dynamicInfo, parameter: BotDynamicStatisticParameter.maxInUse),
              const AppVerticalDivider(),
              _buildDynamicStatsColumn(info: dynamicInfo, parameter: BotDynamicStatisticParameter.orders),
            ]),
            tableRowSpacer(count: 5, height: 5),
            TableRow(children: [
              _buildDynamicStatsColumn(info: dynamicInfo, parameter: BotDynamicStatisticParameter.totalBotHours),
              const AppVerticalDivider(),
              if (showNoControlDynamic) ...[
                _buildDynamicStatsColumn(
                    info: dynamicInfo, parameter: BotDynamicStatisticParameter.noControlInstantLoss),
                const AppVerticalDivider(),
                _buildDynamicStatsColumn(info: dynamicInfo, parameter: BotDynamicStatisticParameter.maxInNoControl),
              ] else ...[
                Container(),
                Container(),
                Container(),
              ]
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildStaticStatsColumn({
    required StaticStatisticsInfo info,
    required BotStaticStatisticParameter parameter,
    AlignmentGeometry alignment = Alignment.centerLeft,
  }) {
    final parameterName = parameter.parameterName;
    return Align(
      alignment: alignment,
      child: AccountStatisticColumnWidget(
        valueWidget: parameter.valueWidget(info),
        parameterName: parameterName,
        showClockIcon: false,
      ),
    );
  }

  Widget _buildDynamicStatsColumn({
    required DynamicStatisticsInfo info,
    required BotDynamicStatisticParameter parameter,
    AlignmentGeometry alignment = Alignment.centerLeft,
  }) {
    final parameterName = parameter.parameterName;
    return Align(
      alignment: alignment,
      child: AccountStatisticColumnWidget(
        valueWidget: parameter.valueWidget(info, styles),
        parameterName: parameterName,
        showClockIcon: true,
      ),
    );
  }
}

Map<StatisticsPeriod, Widget> segmentedWidgetList(StatisticsPeriod period) {
  final dictionary = <StatisticsPeriod, Widget>{};
  for (final element in StatisticsPeriod.values) {
    dictionary[element] = Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Text(
        element.uiValue,
        style: element == period
            ? const TextStyle(color: Colors.black, fontSize: 13)
            : const TextStyle(color: ColorPalette.grayFont, fontSize: 13),
      ),
    );
  }
  return dictionary;
}

class AccountStatisticColumnWidget extends StatelessWidget {
  const AccountStatisticColumnWidget({
    required this.valueWidget,
    required this.parameterName,
    required this.showClockIcon,
    Key? key,
  }) : super(key: key);

  final Widget valueWidget;
  final String parameterName;
  final bool showClockIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: showClockIcon ? 1 : 0),
          child: valueWidget,
        ),
        RichText(
          text: TextSpan(
            children: [
              if (showClockIcon)
                const WidgetSpan(
                  child: Padding(
                      padding: EdgeInsets.only(right: 3.0),
                      child: Icon(
                        Icons.access_time,
                        size: 15,
                      )),
                ),
              TextSpan(
                text: parameterName,
              ),
            ],
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: _fontFamilyName,
            ),
          ),
        ),
      ],
    );
  }
}

extension BotDynamicStatisticParameterWidgetExtension on BotDynamicStatisticParameter {
  Widget valueWidget(DynamicStatisticsInfo info, StyleInfo styleInfo) {
    switch (this) {
      case BotDynamicStatisticParameter.cumulativePNL:
        final pnlUp = info.cumulativePnlUp;
        final pnl = info.cumulativePnl;
        final color = styleInfo.color(forBool: pnl.startsWith('+'));
        return RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: pnl,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.w700,
                  fontFamily: _fontFamilyName,
                  fontSize: 14,
                ),
              ),
              if (pnlUp != null)
                WidgetSpan(
                  child: Icon(
                    pnlUp ? Icons.arrow_upward_outlined : Icons.arrow_downward_outlined,
                    color: styleInfo.color(forBool: pnlUp),
                    size: 15,
                  ),
                ),
            ],
          ),
        );
      case BotDynamicStatisticParameter.roi:
      case BotDynamicStatisticParameter.turnover:
      case BotDynamicStatisticParameter.maxInUse:
      case BotDynamicStatisticParameter.bankTurnover:
      case BotDynamicStatisticParameter.maxInNoControl:
      case BotDynamicStatisticParameter.totalBotHours:
      case BotDynamicStatisticParameter.orders:
        return RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: statisticValue(info),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: _fontFamilyName,
                  fontSize: 14,
                ),
              ),
              TextSpan(
                text: signEndString,
                style: const TextStyle(
                  color: ColorPalette.grayFont,
                  fontSize: 14,
                  fontFamily: _fontFamilyName,
                ),
              ),
            ],
          ),
        );
      case BotDynamicStatisticParameter.noControlInstantLoss:
        final value = info.noControlInstantLoss;
        final color = styleInfo.color(forBool: value.startsWith('+'));
        return RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: value,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.w700,
                  fontFamily: _fontFamilyName,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        );
    }
  }
}

extension BotStaticStatisticParameterWidgetExtension on BotStaticStatisticParameter {
  Widget valueWidget(StaticStatisticsInfo info) {
    return Text(
      statisticValue(info),
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 14,
      ),
    );
  }
}

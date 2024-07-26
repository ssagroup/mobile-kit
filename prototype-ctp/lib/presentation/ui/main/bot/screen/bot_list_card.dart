import 'package:ctp_mobile/api/response/bot_response.dart';
import 'package:ctp_mobile/api/response/style.dart';
import 'package:ctp_mobile/domain/bot/bot_parameter_enum.dart';
import 'package:ctp_mobile/presentation/resources/assets.dart';
import 'package:ctp_mobile/presentation/resources/colors.dart';
import 'package:ctp_mobile/presentation/ui/main/bot/screen/bot_stats_column_widget.dart';
import 'package:ctp_mobile/presentation/ui/widget/dialog.dart';
import 'package:ctp_mobile/util/color_extension.dart';
import 'package:ctp_mobile/util/optional.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const String _fontFamilyName = 'Manrope';

class BotListCard extends StatefulWidget {
  final BotInfo botInfo;
  final StyleInfo styleInfo;
  final void Function(BotInfo botInfo) onPressAction;

  const BotListCard({
    required this.botInfo,
    required this.styleInfo,
    required this.onPressAction,
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => BotListCardState(botInfo: botInfo);
}

class BotListCardState extends State<BotListCard> {
  final BotInfo botInfo;

  BotListCardState({
    required this.botInfo,
  });

  @override
  Widget build(BuildContext context) {
    final showNC = botInfo.mobileStatistics.showNoControl;

    return Card(
      margin: const EdgeInsets.all(8.0),
      clipBehavior: Clip.hardEdge,
      color: ColorPalette.greyBackground,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      child: Stack(
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                Container(
                    color: botInfo.isRunning
                        ? ColorPalette.greenBackground
                        : ColorPalette.pinkBackground,
                    width: 8),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 60, 0),
                          child: _nameAndIcon(botInfo),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 60, 0),
                          child: Text(
                            botInfo.statusAlias.orEmpty,
                            style: TextStyle(
                                color: HexColor.fromHex(botInfo.statusColor),
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 16, 16),
                            child: Table(
                                // border: TableBorder.all(),
                                columnWidths: const {
                                  0: IntrinsicColumnWidth(),
                                  1: FlexColumnWidth(),
                                  2: IntrinsicColumnWidth(),
                                  3: FlexColumnWidth(),
                                  4: IntrinsicColumnWidth(),
                                },
                                children: [
                                  TableRow(children: [
                                    _buildStatsColumn(
                                        info: botInfo,
                                        parameter: BotParameter.pnl),
                                    Container(),
                                    _buildStatsColumn(
                                        info: botInfo,
                                        parameter: BotParameter.hourlyPnl),
                                    Container(),
                                    _buildStatsColumn(
                                        info: botInfo,
                                        parameter: BotParameter.roi),
                                  ]),
                                  tableRowSpacer(count: 5, height: 5),
                                  TableRow(children: [
                                    _buildStatsColumn(
                                        info: botInfo,
                                        parameter: BotParameter.strategy),
                                    Container(),
                                    _buildStatsColumn(
                                        info: botInfo,
                                        parameter: BotParameter.instrument),
                                    Container(),
                                    _buildStatsColumn(
                                        info: botInfo,
                                        parameter: BotParameter.orderSize),
                                  ]),
                                  tableRowSpacer(count: 5, height: 5),
                                  TableRow(children: [
                                    _buildStatsColumn(
                                        info: botInfo,
                                        parameter: BotParameter.lastOrder),
                                    Container(),
                                    _buildStatsColumn(
                                        info: botInfo,
                                        parameter: BotParameter.uptime),
                                    Container(),
                                    _buildStatsColumn(
                                        info: botInfo,
                                        parameter: BotParameter.orders),
                                  ]),
                                  tableRowSpacer(count: 5, height: 5),
                                  TableRow(children: [
                                    _buildStatsColumn(
                                        info: botInfo,
                                        parameter: BotParameter.available),
                                    Container(),
                                    _buildStatsColumn(
                                        info: botInfo,
                                        parameter: BotParameter.currentlyInUse),
                                    Container(),
                                    _buildStatsColumn(
                                        info: botInfo,
                                        parameter: BotParameter.maxInUse),
                                  ]),
                                  if (showNC) ...[
                                    tableRowSpacer(count: 5, height: 5),
                                    TableRow(children: [
                                      _buildStatsColumn(
                                          info: botInfo,
                                          parameter: BotParameter.ncInstLoss),
                                      Container(),
                                      _buildStatsColumn(
                                          info: botInfo,
                                          parameter: BotParameter.maxInNC),
                                      Container(),
                                      _buildStatsColumn(
                                          info: botInfo,
                                          parameter: BotParameter.ncOrders),
                                    ]),
                                    tableRowSpacer(count: 5, height: 5),
                                    TableRow(children: [
                                      _buildStatsColumn(
                                          info: botInfo,
                                          parameter: BotParameter.nc),
                                      Container(),
                                      Container(),
                                      Container(),
                                      Container()
                                    ]),
                                  ],
                                ]),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
          _buildStartPauseBotAction(botInfo),
        ],
      ),
    );
  }

  Widget _nameAndIcon(BotInfo info) {
    final botName = info.name;
    final showCoinIcon = info.platform == 'Binance';

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: botName,
          ),
          if (showCoinIcon) ...[
            WidgetSpan(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SvgPicture.asset(
                  Assets.coinIcon,
                ),
              ),
            ),
          ]
        ],
        style: const TextStyle(
          color: Colors.black,
          fontSize: 13,
          fontFamily: _fontFamilyName,
        ),
      ),
    );
  }

  Widget _buildStatsColumn({
    required BotInfo info,
    required BotParameter parameter,
    AlignmentGeometry alignment = Alignment.centerLeft,
  }) {
    // final botStats = parameter.setupBotParameter(info);
    final parameterName = parameter.parameterName;
    return Align(
      alignment: alignment,
      child: BotStatsColumnWidget(
        firstLineWidget: parameter.firstLineValueWidget(info, widget.styleInfo),
        secondLineWidget:
            parameter.secondLineValueWidget(info, widget.styleInfo),
        thirdLineWidget: parameter.thirdLineValueWidget(info, widget.styleInfo),
        parameterName: parameterName,
        showClockIcon: parameter.showClockIcon,
      ),
    );
  }

  Widget _buildStartPauseBotAction(BotInfo info) {
    final icon = SvgPicture.asset(
      info.isRunning ? Assets.pauseBotIcon : Assets.runBotIcon,
      // colorFilter: colorFilter
    );

    return Builder(builder: (context) {
      return Positioned(
        right: 0.0,
        child: info.isActionsDisabled == true
            ? const Padding(
                padding: EdgeInsets.all(16.0),
                child: CupertinoActivityIndicator(
                  color: ColorPalette.grayFont,
                  radius: 15,
                ),
              )
            : IconButton(
                iconSize: 45.0,
                icon: icon,
                onPressed: () async {
                  if (info.isRunning) {
                    final isOk = await showDialogWithCancel(
                        context: context,
                        title: 'Stop Bot',
                        message: 'Are you sure you want to stop bot?',
                        isDestructive: true);
                    if (isOk) {
                      widget.onPressAction(info);
                    }
                  } else {
                    widget.onPressAction(info);
                  }
                },
              ),
      );
    });
  }
}

TableRow tableRowSpacer({required int count, required double height}) {
  return TableRow(
    children: List.generate(count, (index) {
      return SizedBox(height: height);
    }),
  );
}

extension BotParameterWidgetExtension on BotParameter {
  Widget firstLineValueWidget(BotInfo info, StyleInfo styleInfo) {
    final value = firstLineValue(info);
    final color = styleInfo.color(forBool: value.startsWith('+'));
    switch (this) {
      case BotParameter.strategy:
      case BotParameter.instrument:
      case BotParameter.orderSize:
      case BotParameter.lastOrder:
      case BotParameter.uptime:
      case BotParameter.orders:
      case BotParameter.ncOrders:
        return Text(
          value,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
        );
      case BotParameter.roi:
      case BotParameter.pnl:
      case BotParameter.hourlyPnl:
        return RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: value,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.w500,
                  fontFamily: _fontFamilyName,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        );
      case BotParameter.available:
      case BotParameter.currentlyInUse:
      case BotParameter.maxInUse:
      case BotParameter.maxInNC:
      case BotParameter.nc:
        return RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: value + ' ',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: _fontFamilyName,
                  fontSize: 13,
                ),
              ),
              TextSpan(
                text: info.firstInstrument,
                style: const TextStyle(
                  color: ColorPalette.grayFont,
                  fontWeight: FontWeight.w500,
                  fontFamily: _fontFamilyName,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        );
      case BotParameter.ncInstLoss:
        return RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: 'Long ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: _fontFamilyName,
                  fontSize: 13,
                ),
              ),
              TextSpan(
                text: value,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.w500,
                  fontFamily: _fontFamilyName,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        );
    }
  }

  Widget? secondLineValueWidget(BotInfo info, StyleInfo styleInfo) {
    final value = secondLineValue(info);
    final color = styleInfo.color(forBool: value.startsWith('+'));
    switch (this) {
      case BotParameter.strategy:
      case BotParameter.instrument:
      case BotParameter.orderSize:
      case BotParameter.lastOrder:
      case BotParameter.uptime:
      case BotParameter.orders:
      case BotParameter.roi:
      case BotParameter.pnl:
      case BotParameter.hourlyPnl:
        return null;
      case BotParameter.ncOrders:
        return Text(
          value,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
        );
      case BotParameter.available:
      case BotParameter.currentlyInUse:
      case BotParameter.maxInUse:
      case BotParameter.maxInNC:
      case BotParameter.nc:
        return RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: value + ' ',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: _fontFamilyName,
                  fontSize: 13,
                ),
              ),
              TextSpan(
                text: info.secondInstrument,
                style: const TextStyle(
                  color: ColorPalette.grayFont,
                  fontWeight: FontWeight.w500,
                  fontFamily: _fontFamilyName,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        );
      case BotParameter.ncInstLoss:
        return RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: 'Short ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: _fontFamilyName,
                  fontSize: 13,
                ),
              ),
              TextSpan(
                text: value,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.w500,
                  fontFamily: _fontFamilyName,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        );
    }
  }

  Widget? thirdLineValueWidget(BotInfo info, StyleInfo styleInfo) {
    final value = thirdLineValue(info);
    switch (this) {
      case BotParameter.strategy:
      case BotParameter.instrument:
      case BotParameter.orderSize:
      case BotParameter.lastOrder:
      case BotParameter.uptime:
      case BotParameter.orders:
      case BotParameter.roi:
      case BotParameter.pnl:
      case BotParameter.hourlyPnl:
      case BotParameter.ncOrders:
      case BotParameter.maxInNC:
      case BotParameter.nc:
      case BotParameter.ncInstLoss:
        return null;
      case BotParameter.available:
      case BotParameter.currentlyInUse:
      case BotParameter.maxInUse:
        return RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: value + ' ',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontFamily: _fontFamilyName,
                  fontSize: 14,
                ),
              ),
              const TextSpan(
                text: 'USDT',
                style: TextStyle(
                  color: ColorPalette.grayFont,
                  fontWeight: FontWeight.w800,
                  fontFamily: _fontFamilyName,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
    }
  }
}

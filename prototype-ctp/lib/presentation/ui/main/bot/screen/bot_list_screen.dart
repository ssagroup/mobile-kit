import 'package:ctp_mobile/data/datasource/notifications_local_datasource_impl.dart';
import 'package:ctp_mobile/data/repository/bot_repository.dart';
import 'package:ctp_mobile/data/repository/notification_repository.dart';
import 'package:ctp_mobile/domain/bot/statistic_period_enum.dart';
import 'package:ctp_mobile/presentation/resources/assets.dart';
import 'package:ctp_mobile/presentation/resources/colors.dart';
import 'package:ctp_mobile/presentation/router/router.dart';
import 'package:ctp_mobile/presentation/ui/auth/authentication_bloc.dart';
import 'package:ctp_mobile/presentation/ui/main/bot/block/bot_list_block.dart';
import 'package:ctp_mobile/presentation/ui/main/bot/block/bot_list_state.dart';
import 'package:ctp_mobile/presentation/ui/main/bot/screen/bot_list_card.dart';
import 'package:ctp_mobile/presentation/ui/main/bot/screen/bot_statistic_section.dart';
import 'package:ctp_mobile/presentation/ui/widget/app_button.dart';
import 'package:ctp_mobile/presentation/ui/widget/app_refresh_indicator.dart';
import 'package:ctp_mobile/presentation/ui/widget/badge_wrapper.dart';
import 'package:ctp_mobile/presentation/ui/widget/dialog.dart';
import 'package:ctp_mobile/presentation/ui/widget/lifecycle_widget.dart';
import 'package:ctp_mobile/presentation/ui/widget/no_data_widget.dart';
import 'package:ctp_mobile/presentation/ui/widget/progress_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class BotListScreen extends StatefulWidget {
  const BotListScreen({Key? key}) : super(key: key);

  @override
  _BotListScreenState createState() => _BotListScreenState();
}

class _BotListScreenState extends State<BotListScreen> {
  late final BotListBloc _bloc;
  final String fontFamilyName = 'Manrope';

  @override
  void initState() {
    super.initState();
    _bloc = BotListBloc(
      Provider.of<BotRepositoryImpl>(context, listen: false),
      Provider.of<NotificationRepositoryImpl>(context, listen: false),
      Provider.of<NotificationsLocalDatasourceImpl>(context, listen: false),
      Provider.of<AuthenticationBloc>(context, listen: false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => _bloc,
      child: BlocConsumer<BotListBloc, BotListState>(
        listener: (context, state) {
          state.authApiStatus.whenOrNull(failure: (String message, bool logout) async {
            if (logout) {
              await showAdaptiveAlertDialog(context, 'Error', message);
              await _bloc.logoutAction();
            } else {
              final snackBar = SnackBar(
                content: Text(
                  message,
                ),
              );
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
            }
          });
        },
        builder: (context, state) {
          return LifeCycleManager(
            onStateChanged: (AppLifecycleState state) {
              if (state == AppLifecycleState.resumed) {
                _bloc.enterForeground();
              } else if (state == AppLifecycleState.paused) {
                _bloc.enterBackground();
              }
            },
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                elevation: 0,
                leading: _buildLogo(),
                actions: _buildActions(),
                backgroundColor: ColorPalette.greyBackground,
              ),
              body: FullScreenProgressIndicator(
                isLoading: state.isLoading,
                child: Column(
                  children: [
                    _buildTopSection(),
                    Expanded(
                      child: AppRefreshIndicator(
                        onRefresh: _bloc.loadData,
                        child: _buildBotList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildLogo() {
    return Builder(builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: SvgPicture.asset(
          Assets.ssaLogoSmall,
          width: 37,
          height: 32,
        ),
      );
    });
  }

  List<Widget> _buildActions() {
    return [
      _buildStopAllButton(),
      TextButton(
        onPressed: () async {
          final isOk = await showDialogWithCancel(
              context: context, title: 'Logout', message: 'Are you sure you want to logout?', isDestructive: true);
          if (isOk) {
            await _bloc.logoutAction();
          }
        },
        child: const Text(
          'Logout',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ),
      BadgeWrapper(
        widget: IconButton(
          onPressed: () => context.goNamed(AppRouter.notificationListRouteName),
          icon: SvgPicture.asset(
            Assets.notificationIcon,
          ),
        ),
        badgeValue: _bloc.state.notificationBadge,
      ),
      const SizedBox(
        width: 20,
      ),
    ];
  }

  Widget _buildTopSection() {
    return Container(
      color: ColorPalette.greyBackground,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: _buildSegmentedControl(),
      ),
    );
  }

  Widget _buildSegmentedControl() {
    return Builder(builder: (context) {
      return CupertinoSegmentedControl<StatisticsPeriod>(
        children: segmentedWidgetList(_bloc.state.periodFilter),
        onValueChanged: _bloc.segmentChanged,
        groupValue: _bloc.state.periodFilter,
        selectedColor: ColorPalette.greyControl,
        borderColor: ColorPalette.greyControl,
      );
    });
  }

  Widget _buildStopAllButton() {
    final isActive = _bloc.state.isStopActive;
    return Builder(builder: (context) {
      return Center(
        child: Container(
          height: 32,
          padding: const EdgeInsets.only(right: 10),
          child: AppButton(
            isActive: isActive,
            title: 'Stop All',
            onPressed: isActive
                ? () async {
                    final isOk = await showDialogWithCancel(
                        context: context,
                        title: 'Stop All Bots',
                        message: 'Are you sure you want to stop all bots?',
                        isDestructive: true);
                    if (isOk) {
                      _bloc.stopAllBotsAction();
                    }
                  }
                : null,
          ),
        ),
      );
    });
  }

  Widget _buildBotList() {
    final bots = _bloc.state.bots;

    final isStatisticsLoaded = _bloc.state.staticStatistic != null
        && _bloc.state.dynamicStatistic != null
        && _bloc.state.styleInfo != null;
    final staticInfo = _bloc.state.staticStatistic;
    final dynamicInfo = _bloc.state.dynamicStatistic;
    final styleInfo = _bloc.state.styleInfo;
    return CustomScrollView(
      slivers: [
        if (isStatisticsLoaded) ...[
          SliverToBoxAdapter(
            child: BotStatisticSection(staticInfo!, dynamicInfo!, styleInfo!, key: UniqueKey()),
          ),
        ],
        if (_bloc.state.bots.isEmpty || styleInfo == null) ...[
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
            ),
          ),
          const SliverToBoxAdapter(
            child: NoDataWidget(title: 'You have no data yet'),
          ),
        ] else ...[
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 8, 8),
              child: Text('Bots', style: TextStyle(color: Colors.black)),
            ),
          ),
          SliverSafeArea(
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return BotListCard(
                    botInfo: bots[index],
                    styleInfo: styleInfo,
                    onPressAction: _bloc.pauseRunBotAction,
                    key: UniqueKey(),
                  );
                },
                childCount: bots.length,
              ),
            ),
          ),
        ],
      ],
    );
  }
}

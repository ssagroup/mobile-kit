import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/util/api_status_failure_messenger.dart';
import 'package:mobile_kit/src/core/widget/alert_widget.dart';
import 'package:mobile_kit/src/core/widget/app_bar_with_logo_widget.dart';
import 'package:mobile_kit/src/core/widget/card_widget.dart';
import 'package:mobile_kit/src/core/widget/lifecycle_widget.dart';
import 'package:mobile_kit/src/core/widget/no_data_widget.dart';
import 'package:mobile_kit/src/core/widget/progress_indicator.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_all_notifications_usecase.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/alerts/bloc/alerts_cubit.dart';

class AlertsScreen extends StatefulWidget {
  const AlertsScreen({super.key});

  @override
  State createState() => _AlertsScreenState();
}

class _AlertsScreenState extends State<AlertsScreen> {
  late final AlertsCubit _bloc;

  @override
  void initState() {
    super.initState();
    final getAllNotificationsUseCase = GetAllNotificationsUseCase(GetIt.instance<AlertsRepository>());
    _bloc = AlertsCubit(
      getAllNotificationsUseCase,
    )..initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return LifeCycleManager(
      onStateChanged: (AppLifecycleState state) {
        if (state == AppLifecycleState.resumed) {
          _bloc.enterForeground();
        }
      },
      child: Scaffold(
        appBar: AppBarWithLogoWidget(
          title: Text(
            AppLocalizations.of(context)!.alertsTitle,
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: BlocConsumer<AlertsCubit, AlertsState>(
          listener: showFailure,
          bloc: _bloc,
          builder: (context, state) {
            return FullScreenProgressIndicator(
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
                        child: NoDataWidget(title: AppLocalizations.of(context)!.noNotificationTitle),
                      ),
                    ] else
                      SliverPadding(
                        padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 110.0),
                        sliver: SliverList.builder(
                          itemBuilder: (BuildContext context, int index) {
                            final elem = state.models[index];
                            return CardWidget(
                              item: AlertWidget(model: elem),
                              index: index,
                            );
                          },
                          itemCount: state.models.length,
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
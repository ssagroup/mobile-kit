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

  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    final getAllNotificationsUseCase = GetNotificationsPageUseCase(GetIt.instance<AlertsRepository>());
    _bloc = AlertsCubit(
      getAllNotificationsUseCase,
    )..initialize();

    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 300
        && !_bloc.state.isLoading
        && _bloc.state.hasMore) {

      _bloc.loadNextPage();
    }
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
              isLoading: state.isLoading && state.models.isEmpty,
              child: RefreshIndicator(
                onRefresh: () => _bloc.refresh(),
                child: Padding(padding: EdgeInsets.only(bottom: 100), child:  Scrollbar(
                  controller: _scrollController,
                  child: CustomScrollView(
                    controller: _scrollController,
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
                      ] else ...[
                        SliverPadding(
                          padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 10.0),
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
                        if (state.isLoading)
                          const SliverToBoxAdapter(
                            child: SizedBox(
                              height: 50,
                              child: Align(alignment: Alignment.topCenter, child: CircularProgressIndicator()
                              ),
                            ),
                          )
                      ],
                    ],
                  ),
                ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
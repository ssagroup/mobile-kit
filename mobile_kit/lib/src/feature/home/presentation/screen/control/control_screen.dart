import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/util/api_status_failure_messenger.dart';
import 'package:mobile_kit/src/core/widget/action_button.dart';
import 'package:mobile_kit/src/core/widget/app_bar_widget.dart';
import 'package:mobile_kit/src/core/widget/card_widget.dart';
import 'package:mobile_kit/src/core/widget/control_widget.dart';
import 'package:mobile_kit/src/core/widget/dialog.dart';
import 'package:mobile_kit/src/core/widget/gradient_box_decoration.dart';
import 'package:mobile_kit/src/core/widget/no_data_widget.dart';
import 'package:mobile_kit/src/core/widget/progress_indicator.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/control_repository.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_all_controls_usecase.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/stop_all_controls_usecase.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/toggle_control_usecase.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/control/bloc/control_cubit.dart';

class ControlScreen extends StatefulWidget {
  const ControlScreen({super.key});

  @override
  State createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  late final ControlCubit _bloc;

  @override
  void initState() {
    super.initState();
    final getAllControlsUseCase = GetAllControlsUseCase(GetIt.instance<ControlRepository>());
    final toggleControlUseCase = ToggleControlUseCase(GetIt.instance<ControlRepository>());
    final stopAllControlsUseCase = StopAllControlsUseCase(GetIt.instance<ControlRepository>());
    _bloc = ControlCubit(
      getAllControlsUseCase,
      toggleControlUseCase,
      stopAllControlsUseCase,
    )..initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ControlCubit, ControlState>(
        listener: showFailure,
        bloc: _bloc,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBarWidget(
              title: Text(
                AppLocalizations.of(context)!.controlTitle,
                style: TextStyle(color: Colors.black),
              ),
              actions: [_buildStopAllButton(state)],
            ),
            body: FullScreenProgressIndicator(
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
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                        sliver: SliverList.builder(
                          itemBuilder: (BuildContext context, int index) {
                            final elem = state.models[index];
                            return CardWidget(
                              item: ControlWidget(
                                model: elem,
                                onPressed: () => _bloc.toggleControlById(elem),
                              ),
                              index: index,
                            );
                          },
                          itemCount: state.models.length,
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

  Widget _buildStopAllButton(ControlState state) {
    final isActive = state.isStopAllActive;
    return Builder(builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: ActionButton(
          onPressed: isActive
              ? () async {
                  final isOk = await showDialogWithCancel(
                    context: context,
                    title: AppLocalizations.of(context)!.stopAllAlertTitle,
                    message: AppLocalizations.of(context)!.stopAllAlertMessage,
                    isDestructive: true,
                  );
                  if (isOk) {
                    _bloc.stopAllAction();
                  }
                }
              : null,
          title: AppLocalizations.of(context)!.stopAllTitle,
          textStyle: TextStyle(color: isActive ? Colors.white : ColorPalette.grayIcon),
          decoration: isActive ? GradientBoxDecoration.dangerRedGradient : GradientBoxDecoration.inactiveGrayGradient,
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }
}

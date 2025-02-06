import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/widget/action_button.dart';
import 'package:mobile_kit/src/core/widget/app_bar_widget.dart';
import 'package:mobile_kit/src/core/widget/card_widget.dart';
import 'package:mobile_kit/src/core/widget/control_widget.dart';
import 'package:mobile_kit/src/core/widget/dialog.dart';
import 'package:mobile_kit/src/core/widget/gradient_box_decoration.dart';
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
    final getAllControlsUseCase = GetAllControlsUsecase(GetIt.instance<ControlRepository>());
    final toggleControlUseCase = ToggleControlUsecase(GetIt.instance<ControlRepository>());
    final stopAllControlsUseCase = StopAllControlsUsecase(GetIt.instance<ControlRepository>());
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
                AppLocalizations.of(context)!.controlTitle,
                style: TextStyle(color: Colors.black),
              ),
              actions: [_buildStopAllButton()],
            ),
            body: FullScreenProgressIndicator(
              isLoading: state.isLoading,
              child: RefreshIndicator(
                onRefresh: () => _bloc.refresh(),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: _buildBody(),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildBody() {
    return Builder(builder: (context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 20),
          _buildControlItems(),
        ],
      );
    });
  }

  Widget _buildControlItems() {
    return Builder(builder: (context) {
      return CardWidget(
        items: _controlItems,
        onTapCallback: (_) {},
      );
    });
  }

  List<Widget> get _controlItems {
    final length = _bloc.state.controls.length;
    return List.generate(length, (index) {
      final elem = _bloc.state.controls[index];
      return ControlWidget(
        model: elem,
        onPressed: () => _bloc.toggleControlById(elem),
      );
    });
  }

  Widget _buildStopAllButton() {
    final isActive = _bloc.state.isStopAllActive;
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

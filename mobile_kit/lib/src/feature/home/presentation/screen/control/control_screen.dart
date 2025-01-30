import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/widget/action_button.dart';
import 'package:mobile_kit/src/core/widget/app_bar_widget.dart';
import 'package:mobile_kit/src/core/widget/card_widget.dart';
import 'package:mobile_kit/src/core/widget/control_widget.dart';
import 'package:mobile_kit/src/core/widget/dialog.dart';
import 'package:mobile_kit/src/core/widget/gradient_box_decoration.dart';
import 'package:mobile_kit/src/core/widget/progress_indicator.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_user_info_usecase.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/control/bloc/control_cubit.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_repository.dart';
import 'package:mobile_kit/src/feature/login/domain/usecase/logout_usecase.dart';

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
    final logoutUseCase = LogoutUseCase(GetIt.instance<AuthenticationRepository>());
    final getUserInfoUseCase = GetUserInfoUseCase(GetIt.instance<AuthenticationRepository>());
    _bloc = ControlCubit(logoutUseCase, getUserInfoUseCase);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Text(
          AppLocalizations.of(context)!.controlTitle,
          style: TextStyle(color: Colors.black),
        ),
        actions: [_buildStopAllButton()],
      ),
      body: BlocConsumer<ControlCubit, ControlState>(
        bloc: _bloc,
        listener: (BuildContext context, ControlState state) {},
        builder: (context, state) {
          return FullScreenProgressIndicator(
            isLoading: state.isLoading,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: _buildBody(),
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
    return [
      ControlWidget(
        assetName: Assets.runBotIcon,
        itemTitle: 'Bot BTC',
        itemDescription: 'Stopped',
        itemDescriptionColor: ColorPalette.redFont,
        onPressed: () {},
      ),
      ControlWidget(
        assetName: Assets.pauseBotIcon,
        itemTitle: 'Bot ETH',
        itemDescription: 'Started',
        itemDescriptionColor: ColorPalette.greenFont,
        onPressed: () {},
      ),
    ];
  }

  Widget _buildStopAllButton() {
    return Builder(builder: (context) {
      return Container(
        padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
        child: ActionButton(
          title: AppLocalizations.of(context)!.stopAllTitle,
          decoration: GradientBoxDecoration.dangerRedGradient,
          onPressed: () async {
            final isOk = await showDialogWithCancel(
              context: context,
              title: AppLocalizations.of(context)!.stopAllAlertTitle,
              message: AppLocalizations.of(context)!.stopAllAlertMessage,
              isDestructive: true,
            );
            if (isOk) {
              _bloc.stopAllAction();
            }
          },
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

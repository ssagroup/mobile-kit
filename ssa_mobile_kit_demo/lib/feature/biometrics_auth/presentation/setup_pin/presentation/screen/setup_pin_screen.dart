import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit_demo/core/data_provider/data_provider.dart';
import 'package:mobile_kit_demo/core/widget/action_button.dart';
import 'package:mobile_kit_demo/core/widget/logo_widget.dart';
import 'package:mobile_kit_demo/feature/biometrics_auth/presentation/setup_pin/domain/usecase/biometrics_usecase.dart';
import 'package:mobile_kit_demo/feature/biometrics_auth/presentation/setup_pin/domain/usecase/setup_pin_usecase.dart';
import 'package:mobile_kit_demo/feature/biometrics_auth/presentation/setup_pin/presentation/bloc/setup_pin_bloc.dart';
import 'package:mobile_kit_demo/feature/login/domain/usecase/logout_usecase.dart';

class SetupPinScreen extends StatefulWidget {
  const SetupPinScreen({super.key});

  @override
  State createState() => _SetupPinScreenState();
}

class _SetupPinScreenState extends State<SetupPinScreen> {
  late final SetupPinBloc _bloc;

  @override
  void initState() {
    super.initState();

    _bloc = SetupPinBloc(
      biometricUsecase: BiometricsUsecase(DataProvider.instance.biometricsAuthRep, DataProvider.instance.authRep),
      setupPinUsecase: SetupPinUsecase(DataProvider.instance.biometricsAuthRep),
      logoutUsecase: LogoutUsecase(DataProvider.instance.authRep),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => _bloc,
      child: Scaffold(
        body: BlocConsumer<SetupPinBloc, SetupPinState>(listener: (context, state) async {
          if (state.isBioAvailable) {
            final shouldEnableResult = await showYesNoDialog(
              context: context,
              title: AppLocalizations.of(context)!.setupPinAlertTitle,
              message: AppLocalizations.of(context)!.setupPinAlertMessage,
            );
            shouldEnableResult ? _bloc.acceptBioAuth() : _bloc.rejectBioAuth();
          }
        }, builder: (context, state) {
          return _buildBody();
        }),
      ),
    );
  }

  Widget _buildBody() {
    return Builder(builder: (context) {
      return SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const AppLogoWidget(),
            const SizedBox(height: 20),
            const Text(
              'Create PIN',
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const SizedBox(height: 20),
            const Text('You can use this PIN to unlock the app'),
            const Text('Pin length is 4 digits'),
            const SizedBox(height: 20),
            Expanded(
              child: PinCodeWidget(
                minPinLength: 4,
                maxPinLength: 4,
                buttonColor: Colors.white,
                filledIndicatorColor: Colors.black,
                borderSide: const BorderSide(width: 1, color: Colors.black),
                numbersStyle: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600, color: Colors.black),
                deleteButtonColor: Colors.white,
                deleteIconColor: Colors.black,
                shouldShowLeftWidget: false,
                onComplete: (pin) {
                  _bloc.setupPin(pin);
                },
                centerBottomWidget: ActionButton(
                  title: 'Logout',
                  onPressed: () => _bloc.logout(),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

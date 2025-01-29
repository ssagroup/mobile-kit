import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/widget/action_button.dart';
import 'package:mobile_kit/src/core/widget/dialog.dart';
import 'package:mobile_kit/src/core/widget/logo_widget.dart';
import 'package:mobile_kit/src/core/widget/pin_code_widget.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/domain/repository/biometrics_auth_repository.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/presentation/setup_pin/domain/usecase/biometrics_usecase.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/presentation/setup_pin/domain/usecase/setup_pin_usecase.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/presentation/setup_pin/presentation/bloc/setup_pin_cubit.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_repository.dart';
import 'package:mobile_kit/src/feature/login/domain/usecase/logout_usecase.dart';

class SetupPinScreen extends StatefulWidget {
  const SetupPinScreen({super.key});

  @override
  State createState() => _SetupPinScreenState();
}

class _SetupPinScreenState extends State<SetupPinScreen> {
  late final SetupPinCubit _bloc;

  @override
  void initState() {
    super.initState();

    _bloc = SetupPinCubit(
      biometricUsecase: BiometricsUsecase(
        GetIt.instance<BiometricsAuthRepository>(),
        GetIt.instance<AuthenticationRepository>(),
      ),
      setupPinUsecase: SetupPinUsecase(GetIt.instance<BiometricsAuthRepository>()),
      logoutUsecase: LogoutUseCase(GetIt.instance<AuthenticationRepository>()),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SetupPinCubit, SetupPinState>(
          bloc: _bloc,
          listener: (context, state) async {
            if (state.isBioAvailable) {
              final shouldEnableResult = await showYesNoDialog(
                context: context,
                title: AppLocalizations.of(context)!.setupPinAlertTitle,
                message: AppLocalizations.of(context)!.setupPinAlertMessage,
              );
              shouldEnableResult ? _bloc.acceptBioAuth() : _bloc.rejectBioAuth();
            }
          },
          builder: (context, state) {
            return _buildBody();
          }),
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
                onComplete: _bloc.setupPin,
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

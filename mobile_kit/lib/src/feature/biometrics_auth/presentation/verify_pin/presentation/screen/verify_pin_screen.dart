import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit/src/core/widget/action_button.dart';
import 'package:mobile_kit/src/core/widget/logo_widget.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/presentation/setup_pin/domain/usecase/biometrics_usecase.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/presentation/verify_pin/domain/usecase/verify_pin_usecase.dart';
import 'package:mobile_kit/src/feature/biometrics_auth/presentation/verify_pin/presentation/bloc/verify_pin_cubit.dart';

class VerifyPinScreen extends StatefulWidget {
  const VerifyPinScreen({super.key});

  @override
  State createState() => _VerifyPinScreenState();
}

class _VerifyPinScreenState extends State<VerifyPinScreen> {
  late final VerifyPinCubit _bloc;
  final _clearPinController = StreamController<bool>();

  @override
  void initState() {
    super.initState();

    _bloc = VerifyPinCubit(
      verifyPinUsecase: VerifyPinUsecase(GetIt.instance<BiometricsAuthRepository>(), GetIt.instance<AuthenticationRepository>()),
      biometricsUsecase: BiometricsUsecase(GetIt.instance<BiometricsAuthRepository>(), GetIt.instance<AuthenticationRepository>()),
      logoutUsecase: LogoutUseCase(GetIt.instance<AuthenticationRepository>()),
    )
    ..initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _clearPinController.close();
    _bloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<VerifyPinCubit, VerifyPinState>(
          bloc: _bloc,
          listener: (context, state) async {
            if (state.showError) {
              Future.delayed(const Duration(milliseconds: 400), () {
                _clearPinController.add(true);
              });
              var snackBar = SnackBar(
                content: Text(
                  AppLocalizations.of(context)!.invalidPinAlert,
                ),
              );
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
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
            Text(
              AppLocalizations.of(context)!.enterPinTitle,
              style: const TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500, color: Colors.black),
            ),
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
                shouldShowLeftWidget: _bloc.state.isBioEnabled,
                onComplete: _bloc.checkCode,
                onLeftAction: _bloc.checkBioIfEnabled,
                clearStream: _clearPinController.stream,
                centerBottomWidget: ActionButton(
                  title: AppLocalizations.of(context)!.verifyPinLogout,
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

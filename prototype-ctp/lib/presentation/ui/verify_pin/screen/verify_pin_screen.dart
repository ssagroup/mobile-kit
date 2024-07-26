import 'package:ctp_mobile/presentation/ui/auth/authentication_bloc.dart';
import 'package:ctp_mobile/presentation/ui/verify_pin/bloc/verify_pin_bloc.dart';
import 'package:ctp_mobile/presentation/ui/widget/action_button.dart';
import 'package:ctp_mobile/presentation/ui/widget/logo_widget.dart';
import 'package:ctp_mobile/presentation/ui/widget/pin_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class VerifyPinScreen extends StatefulWidget {
  const VerifyPinScreen({super.key});

  @override
  State createState() => _VerifyPinScreenState();
}

class _VerifyPinScreenState extends State<VerifyPinScreen> {
  late final VerifyPinBloc _bloc;

  @override
  void initState() {
    super.initState();

    _bloc = VerifyPinBloc(authRepository: Provider.of<AuthenticationBloc>(context, listen: false));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => _bloc,
      child: Scaffold(
        body: BlocConsumer<VerifyPinBloc, VerifyPinState>(listener: (context, state) async {
          if (state.showError) {
            const snackBar = SnackBar(
              content: Text(
                'Invalid PIN. Please try again',
              ),
            );
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(snackBar);
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
              'Enter PIN',
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500, color: Colors.black),
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
                clearStream: _bloc.clearPinStream,
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

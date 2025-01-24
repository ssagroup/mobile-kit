import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/widget/dialog.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_repository.dart';
import 'package:mobile_kit/src/feature/login/domain/usecase/logout_usecase.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final LogoutUsecase _logoutUseCase;

  @override
  void initState() {
    super.initState();
    _logoutUseCase = LogoutUsecase(GetIt.instance<AuthenticationRepository>());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorPalette.greyBackground,
        actions: _buildActions(),
      ),
    );
  }

  List<Widget> _buildActions() {
    return [
      TextButton(
        onPressed: () async {
          final isOk = await showDialogWithCancel(
            context: context,
            title: AppLocalizations.of(context)!.logoutAlertTitle,
            message: AppLocalizations.of(context)!.logoutAlertMessage,
            isDestructive: true,
          );
          if (isOk) {
            await _logoutUseCase.logout();
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
    ];
  }
}

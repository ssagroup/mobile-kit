import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/widget/action_button.dart';
import 'package:mobile_kit/src/core/widget/dialog.dart';
import 'package:mobile_kit/src/core/widget/gradient_box_decoration.dart';
import 'package:mobile_kit/src/core/widget/progress_indicator.dart';
import 'package:mobile_kit/src/core/widget/text_field.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_user_info_usecase.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/bloc/settings_cubit.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_repository.dart';
import 'package:mobile_kit/src/feature/login/domain/usecase/logout_usecase.dart';
import 'package:mobile_kit/src/core/util/optional.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late final SettingsCubit _bloc;

  final TextEditingController _emailTC = TextEditingController();
  final TextEditingController _usernameTC = TextEditingController();

  @override
  void initState() {
    super.initState();
    final logoutUseCase = LogoutUseCase(GetIt.instance<AuthenticationRepository>());
    final getUserInfoUseCase = GetUserInfoUseCase(GetIt.instance<AuthenticationRepository>());
    _bloc = SettingsCubit(logoutUseCase, getUserInfoUseCase)
      ..initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.settingsTitle,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        backgroundColor: ColorPalette.greyBackground,
        foregroundColor: Colors.black,
        flexibleSpace: Container(
          decoration: GradientBoxDecoration.backgroundBarGradient,
        ),
      ),
      body: BlocConsumer<SettingsCubit, SettingsState>(
        bloc: _bloc,
        listener: (BuildContext context, SettingsState state) {
          _emailTC.text = state.email.orEmpty;
          _usernameTC.text = state.username.orEmpty;
        },
        builder: (context, state) {
          return FullScreenProgressIndicator(
            isLoading: state.isLoading,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: _buildBody(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildBody() {
    return Builder(builder: (context) {
      return SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            _buildSettingsForm(),
            const Spacer(),
            _buildLogoutButton(),
            const SizedBox(height: 20),
          ],
        ),
      );
    });
  }

  Widget _buildSettingsForm() {
    return Builder(builder: (context) {
      return Form(
        child: Column(
          children: <Widget>[
            AppTextField(
              controller: _usernameTC,
              prefixIconName: Assets.userIcon,
              prefixIconColor: Colors.grey,
              readOnly: true,
            ),
            const SizedBox(height: 20),
            AppTextField(
              controller: _emailTC,
              prefixIconName: Assets.envelopIcon,
              prefixIconColor: Colors.grey,
              readOnly: true,
            ),
          ],
        ),
      );
    });
  }

  Widget _buildLogoutButton() {
    return Builder(builder: (context) {
      return ActionButton(
        title: AppLocalizations.of(context)!.logoutButton,
        onPressed: () async {
          final isOk = await showDialogWithCancel(
            context: context,
            title: AppLocalizations.of(context)!.logoutAlertTitle,
            message: AppLocalizations.of(context)!.logoutAlertMessage,
            isDestructive: true,
          );
          if (isOk) {
            _bloc.logoutAction();
          }
        },
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _usernameTC.dispose();
    _emailTC.dispose();
    _bloc.close();
  }
}

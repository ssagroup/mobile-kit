import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/widget/action_button.dart';
import 'package:mobile_kit/src/core/widget/logo_widget.dart';
import 'package:mobile_kit/src/core/widget/progress_indicator.dart';
import 'package:mobile_kit/src/core/widget/text_field.dart';
import 'package:mobile_kit/src/core/util/optional.dart';
import 'package:mobile_kit/src/feature/login/domain/repository/auth_repository.dart';
import 'package:mobile_kit/src/feature/login/domain/usecase/login_usecase.dart';
import 'package:mobile_kit/src/feature/login/presentation/bloc/login_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final LoginCubit _bloc;

  final TextEditingController _emailTC = TextEditingController();
  final TextEditingController _passwordTC = TextEditingController();

  @override
  void initState() {
    super.initState();
    final loginUseCase = LoginUseCase(GetIt.instance<AuthenticationRepository>());
    _bloc = LoginCubit(loginUseCase);

    _emailTC.addListener(() => _bloc.emailChanged(_emailTC.text));
    _emailTC.text = _bloc.state.email.orEmpty;

    _passwordTC.addListener(() => _bloc.passwordChanged(_passwordTC.text));
    _passwordTC.text = _bloc.state.password.orEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => _bloc,
      child: Scaffold(
        body: BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
          state.loginStatus.whenOrNull(failure: (String message, _) {
            final snackBar = SnackBar(
              content: Text(
                message,
              ),
            );
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(snackBar);
          });
        }, builder: (context, state) {
          return FullScreenProgressIndicator(
            isLoading: state.isLoading,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 100.0),
                child: _buildSignIn(),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildSignIn() {
    return Builder(builder: (context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 30),
          const AppLogoWidget(),
          const SizedBox(height: 20),
          _buildSignInForm(),
          const SizedBox(height: 20),
          // _buildRememberMe(),
          // const SizedBox(height: 20),
          _buildLoginButton(),
        ],
      );
    });
  }

  Widget _buildSignInForm() {
    return Builder(builder: (context) {
      return Form(
        child: Column(
          children: <Widget>[
            FocusTraversalOrder(
              order: const NumericFocusOrder(1.0),
              child: AppTextField(
                controller: _emailTC,
                hint: AppLocalizations.of(context)!.emailPlaceholder,
                textInputAction: TextInputAction.next,
                errorText: _bloc.state.emailError,
                prefixIconName: Assets.envelopIcon,
                prefixIconColor: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FocusTraversalOrder(
              order: const NumericFocusOrder(2.0),
              child: AppTextField(
                controller: _passwordTC,
                hint: AppLocalizations.of(context)!.passwordPlaceholder,
                textInputAction: TextInputAction.next,
                errorText: _bloc.state.passwordError,
                shouldShowEyeIcon: true,
                onEyePressed: _bloc.changeVisibility,
                onOffEyeIcon: _bloc.state.showPassword,
                prefixIconName: Assets.lockIcon,
                prefixIconColor: Colors.grey,
                obscureText: _bloc.state.showPassword,
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _buildLoginButton() {
    return Builder(builder: (context) {
      return ActionButton(title: AppLocalizations.of(context)!.loginButton,
        onPressed: () => _bloc.loginAction(),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _passwordTC.dispose();
    _emailTC.dispose();
  }
}

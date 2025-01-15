import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_kit_demo/core/resources/assets.dart';
import 'package:mobile_kit_demo/core/resources/colors.dart';
import 'package:mobile_kit_demo/core/widget/action_button.dart';
import 'package:mobile_kit_demo/core/widget/logo_widget.dart';
import 'package:mobile_kit_demo/feature/login/presentation/login/bloc/auth/auth_bloc.dart';
import 'package:mobile_kit_demo/feature/login/presentation/login/bloc/login/login_bloc.dart';
import 'package:provider/provider.dart';
import 'package:mobile_kit/mobile_kit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final LoginBloc _bloc;

  final TextEditingController _emailTC = TextEditingController();
  final TextEditingController _passwordTC = TextEditingController();

  @override
  void initState() {
    super.initState();

    _bloc = LoginBloc(Provider.of<AuthenticationBloc>(context, listen: false));

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
        body: BlocConsumer<LoginBloc, LoginState>(listener: (context, state) {
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
                hint: 'Email*',
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
                hint: 'Password*',
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

  Widget _buildRememberMe() {
    return Builder(builder: (context) {
      return Center(
        child: Row(
          children: [
            Checkbox(
              value: _bloc.state.rememberMe,
              activeColor: ColorPalette.bluishAction,
              side: const BorderSide(width: 0.5),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              onChanged: (bool? value) {
                _bloc.changeRememberMe();
              },
            ),
            const Text('Remember Me'),
          ],
        ),
      );
    });
  }

  Widget _buildLoginButton() {
    return Builder(builder: (context) {
      return ActionButton(title: 'Log In',
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

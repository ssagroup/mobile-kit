import 'package:flutter/material.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit_demo/core/resources/colors.dart';
import 'package:mobile_kit_demo/feature/login/presentation/login/bloc/auth/auth_bloc.dart';
import 'package:provider/provider.dart';

class AlertsScreen extends StatefulWidget {
  const AlertsScreen({super.key});

  @override
  State createState() => _AlertsScreenState();
}

class _AlertsScreenState extends State<AlertsScreen> {
  late final AuthenticationBloc _authBloc;

  @override
  void initState() {
    super.initState();
    _authBloc = Provider.of<AuthenticationBloc>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alerts'),
        elevation: 0,
        backgroundColor: ColorPalette.bluishAction,
        actions: _buildActions(),
      ),
    );
  }

  List<Widget> _buildActions() {
    return [
      TextButton(
        onPressed: () async {
          final isOk = await showDialogWithCancel(
              context: context, title: 'Logout', message: 'Are you sure you want to logout?', isDestructive: true);
          if (isOk) {
            await _authBloc.logout();
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
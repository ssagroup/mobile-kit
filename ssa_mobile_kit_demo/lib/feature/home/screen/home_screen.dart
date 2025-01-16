import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit_demo/core/resources/assets.dart';
import 'package:mobile_kit_demo/core/resources/colors.dart';
import 'package:mobile_kit_demo/core/widget/card_widget.dart';
import 'package:mobile_kit_demo/core/widget/logo_widget.dart';
import 'package:mobile_kit_demo/feature/login/presentation/login/bloc/auth/auth_bloc.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        title: const Text('Home', style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: ColorPalette.greyBackground,
        actions: _buildActions(),
        leading: const AppLogoWidget(),
        leadingWidth: 116,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CardWidget(
          items: _homeItems,
          onTapCallback: (int index) {
            // go to next screen
          },
        ),
      ),
    );
  }

  List<Widget> _buildActions() {
    return [
      IconButton(
        onPressed: () async {
          final isOk = await showDialogWithCancel(
              context: context, title: 'Logout', message: 'Are you sure you want to logout?', isDestructive: true);
          if (isOk) {
            await _authBloc.logout();
          }
        },
        icon: const Icon(Icons.logout),
        color: Colors.black,
      ),
    ];
  }

  List<Widget> get _homeItems {
    return <Widget>[
      const HomeCardItem(assetName: Assets.infrastructureIcon, itemTitle: 'Infrastructure'),
      const HomeCardItem(assetName: Assets.controlIcon, itemTitle: 'Control'),
      const HomeCardItem(assetName: Assets.kpiIcon, itemTitle: 'KPIs'),
      const HomeCardItem(assetName: Assets.settingsIcon, itemTitle: 'Settings'),
    ];
  }
}

class HomeCardItem extends StatefulWidget {
  const HomeCardItem({super.key, required this.assetName, required this.itemTitle});

  final String assetName;
  final String itemTitle;

  @override
  State<StatefulWidget> createState() => HomeCardItemState();
}

class HomeCardItemState extends State<HomeCardItem> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          widget.assetName,
          width: 20,
          height: 20,
          color: ColorPalette.grayFont,
        ),
        const SizedBox(width: 24),
        Text(widget.itemTitle),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios,
          size: 20,
          color: ColorPalette.grayFont,
        ),
      ],
    );
  }
}
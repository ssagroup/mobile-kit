import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/router/router.dart';
import 'package:mobile_kit/src/core/widget/app_bar_widget.dart';
import 'package:mobile_kit/src/core/widget/card_item_widget.dart';
import 'package:mobile_kit/src/core/widget/card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Text(
          AppLocalizations.of(context)!.homeTitle,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CardWidget(
          items: _homeItems,
          onTapCallback: (int index) {
            // go to next screen
            if (index == 3) {
              context.goNamed(settingsRouteName);
            }
          },
        ),
      ),
    );
  }

  List<Widget> get _homeItems {
    return <Widget>[
      const CardItem(
        assetName: Assets.infrastructureIcon,
        itemTitle: 'Infrastructure',
        index: 0,
      ),
      const CardItem(
        assetName: Assets.controlIcon,
        itemTitle: 'Control',
        index: 1,
      ),
      const CardItem(
        assetName: Assets.kpiIcon,
        itemTitle: 'KPIs',
        index: 2,
      ),
      const CardItem(
        assetName: Assets.settingsIcon,
        itemTitle: 'Settings',
        index: 3,
      ),
    ];
  }
}

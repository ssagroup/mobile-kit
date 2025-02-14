import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/router/router.dart';
import 'package:mobile_kit/src/core/widget/app_bar_with_logo_widget.dart';
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
      appBar: AppBarWithLogoWidget(
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
            switch (index) {
              case 0:
                context.goNamed(infrastructureRouteName);
              case 1:
                context.goNamed(controlRouteName);
              case 2:
                context.goNamed(kpisRouteName);
              case 3:
                context.goNamed(settingsRouteName);
            }
          },
        ),
      ),
    );
  }

  List<Widget> get _homeItems {
    return <Widget>[
      CardItem(
        assetName: Assets.infrastructureIcon,
        itemTitle: AppLocalizations.of(context)!.infrastructureTitle,
        iconColor: ColorPalette.grayIcon,
        iconSize: 20,
      ),
      CardItem(
        assetName: Assets.controlIcon,
        itemTitle: AppLocalizations.of(context)!.controlTitle,
        iconColor: ColorPalette.grayIcon,
        iconSize: 20,
      ),
      CardItem(
        assetName: Assets.kpiIcon,
        itemTitle: AppLocalizations.of(context)!.kpisTitle,
        iconColor: ColorPalette.grayIcon,
        iconSize: 20,
      ),
      CardItem(
        assetName: Assets.settingsIcon,
        itemTitle: AppLocalizations.of(context)!.settingsTitle,
        iconColor: ColorPalette.grayIcon,
        iconSize: 20,
      ),
    ];
  }
}

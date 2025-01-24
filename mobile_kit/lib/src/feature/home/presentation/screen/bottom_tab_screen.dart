import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/alerts_screen.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/home_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class BottomTabScreen extends StatefulWidget {
  const BottomTabScreen({super.key});

  @override
  State createState() => _BottomTabScreenState();
}

class _BottomTabScreenState extends State<BottomTabScreen> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    // final widget = CupertinoTabBar(items: []);
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
      backgroundColor: ColorPalette.greyBackground,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle: NavBarStyle.style1,
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const AlertsScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          Assets.homeIcon,
          package: assetsPackage,
        ),
        title: AppLocalizations.of(context)!.homeTitle,
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: ColorPalette.grayFont,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          Assets.notificationIcon,
          package: assetsPackage,
        ),
        title: AppLocalizations.of(context)!.alertsTitle,
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: ColorPalette.grayFont,
      ),
    ];
  }

}

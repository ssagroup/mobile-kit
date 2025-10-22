import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/widget/bottom_bar_widget.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/alerts_repository.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_all_notifications_usecase.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/alerts/alerts_screen.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/home/home_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

GlobalKey<ScaffoldState> scaffoldState = new GlobalKey();

class BottomTabScreen extends StatefulWidget {
  const BottomTabScreen({super.key});

  @override
  State createState() => _BottomTabScreenState();
}

class _BottomTabScreenState extends State<BottomTabScreen> {
  late PersistentTabController _controller;
  final GetNotificationsPageUseCase _useCase = GetNotificationsPageUseCase(GetIt.instance<AlertsRepository>());

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    final inset = 16.0;
    double tabWidth = screenWidth / 2 - inset * 2;
    return Scaffold(
      key: scaffoldState,
      body: PersistentTabView.custom(
        context,
        controller: _controller,
        customWidget: Container(
          color: ColorPalette.grayBackground,
          child: BottomBarWidget(
            tabWidth: tabWidth,
            inset: inset,
            items: _navBarsItems(),
            onItemSelected: (final index) {
              setState(() {
                _controller.index = index;
              });
            },
            selectedIndex: _controller.index,
          ),
        ),
        screens: _buildScreens(),
        stateManagement: true,
        hideNavigationBarWhenKeyboardAppears: true,
        isVisible: true,
        animationSettings: const NavBarAnimationSettings(
          navBarItemAnimation: ItemAnimationSettings(
            duration: Duration(milliseconds: 400),
            curve: Curves.ease,
          ),
        ),
        confineToSafeArea: false,
        navBarHeight: 102,
        itemCount: 2,
      ),
    );
  }

  List<CustomNavBarScreen> _buildScreens() {
    return [
      CustomNavBarScreen(
        screen: const HomeScreen(),
      ),
      CustomNavBarScreen(
        screen: const AlertsScreen(),
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          Assets.homeSelectedIcon,
          package: assetsPackage,
        ),
        inactiveIcon: SvgPicture.asset(
          Assets.homeIcon,
          package: assetsPackage,
        ),
        title: AppLocalizations.of(context)!.homeTitle,
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: ColorPalette.grayIcon,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          Assets.notificationSelectedIcon,
          package: assetsPackage,
        ),
        inactiveIcon: SvgPicture.asset(
          Assets.notificationIcon,
          package: assetsPackage,
        ),
        title: AppLocalizations.of(context)!.alertsTitle,
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: ColorPalette.grayIcon,
      ),
    ];
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/widget/gradient_box_decoration.dart';
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
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView.custom(
      context,
      controller: _controller,
      customWidget: CustomNavBarWidget(
        items: _navBarsItems(),
        onItemSelected: (final index) {
          setState(() {
            _controller.index = index;
          });
        },
        selectedIndex: _controller.index,
      ),
      screens: _buildScreens(),
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      backgroundColor: ColorPalette.greyBackground,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: 72,
      itemCount: 2,
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
          Assets.homeIcon,
          package: assetsPackage,
        ),
        title: AppLocalizations.of(context)!.homeTitle,
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: ColorPalette.grayIcon,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
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

class CustomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final List<PersistentBottomNavBarItem> items;
  final ValueChanged<int> onItemSelected;

  CustomNavBarWidget({
    required this.selectedIndex,
    required this.items,
    required this.onItemSelected,
  });

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
    return Container(
      alignment: Alignment.center,
      width: 170.0,
      margin: EdgeInsets.all(8),
      // decoration: GradientBoxDecoration.backgroundGradient,
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : ColorPalette.greyBackground,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconTheme(
            data: IconThemeData(color: isSelected ? item.activeColorPrimary : item.inactiveColorPrimary),
            child: item.icon,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              item.title.orEmpty,
              style: TextStyle(
                color: isSelected ? item.activeColorPrimary : item.inactiveColorPrimary,
                fontWeight: FontWeight.w400,
                fontSize: 12.0,
                decorationColor: isSelected ? Colors.white : ColorPalette.greyBackground,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPalette.greyBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: items.map((item) {
          int index = items.indexOf(item);
          return GestureDetector(
            onTap: () {
              onItemSelected(index);
            },
            child: _buildItem(item, selectedIndex == index),
          );
        }).toList(),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_kit_demo/core/resources/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:mobile_kit_demo/feature/home/presentation/screen/alerts_screen.dart';
import 'package:mobile_kit_demo/feature/home/presentation/screen/home_screen.dart';

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
      // padding: const EdgeInsets.only(top: 8),
      backgroundColor: ColorPalette.greyBackground,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
      //   screenTransitionAnimation: ScreenTransitionAnimationSettings( // Screen transition animation on change of selected tab.
      //     animateTabTransition: false,
      //     duration: Duration(milliseconds: 200),
      //     screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
      //   ),
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
        icon: const Icon(Icons.home_filled),
        title: ("Home"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: ColorPalette.grayFont,

        // scrollController: _scrollController1,
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //   initialRoute: "/",
        //   routes: {
        //     "/first": (final context) => const MainScreen2(),
        //     "/second": (final context) => const MainScreen3(),
        //   },
        // ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.bell),
        title: ("Alerts"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: ColorPalette.grayFont,
        // scrollController: _scrollController2,
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //   initialRoute: "/",
        //   routes: {
        //     "/first": (final context) => const MainScreen2(),
        //     "/second": (final context) => const MainScreen3(),
        //   },
        // ),
      ),
    ];
  }

}

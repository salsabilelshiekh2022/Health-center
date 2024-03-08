import 'package:el_amal_app/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:el_amal_app/generated/l10n.dart';
import '../../../../category/presentation/views/category_view.dart';
import '../../../../profile/presentation/views/profile_view.dart';
import '../../../../select_date_and_time/presentation/views/select_date_and_time_view.dart';
import '../home_view.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  final _controller = PersistentTabController();
  List<Widget> _buildScreens() {
    return [
      const HomeView(),
      const CategoryView(),
      const SelectDateAndTimeView(),
      const ProfileView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.house),
        title: S.of(context).home,
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: AppColors.grey,
        iconSize: 22,
        textStyle: const TextStyle(fontSize: 10),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.rectangle_grid_2x2),
        title: S.of(context).category,
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: AppColors.grey,
        iconSize: 22,
        textStyle: const TextStyle(fontSize: 10),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.watch_rounded),
        title: S.of(context).book,
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: AppColors.grey,
        iconSize: 24,
        textStyle: const TextStyle(fontSize: 10),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person),
        title: S.of(context).profile,
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: AppColors.grey,
        iconSize: 24,
        textStyle: const TextStyle(fontSize: 10),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: AppColors.primaryColor, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(12.0),
            colorBehindNavBar: AppColors.primaryColor,
            boxShadow: [
              const BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20,
                  blurStyle: BlurStyle.solid),
            ]),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style6,
        // Choose the nav bar style with this property.
      ),
    );
  }
}

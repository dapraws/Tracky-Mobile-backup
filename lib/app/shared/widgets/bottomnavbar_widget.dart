import 'package:flutter/material.dart';
import 'package:tracky/app/shared/themes/font.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: const Color(0xffFFA500),
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: body2Bold,
      unselectedLabelStyle: body2Regular,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/ic_home.png",
            height: 24,
          ),
          activeIcon: Image.asset(
            "assets/icons/ic_home_active.png",
            height: 24,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/ic_asset.png",
            height: 24,
          ),
          activeIcon: Image.asset(
            "assets/icons/ic_asset_active.png",
            height: 24,
          ),
          label: 'Your Asset',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/ic_request.png",
            height: 24,
          ),
          activeIcon: Image.asset(
            "assets/icons/ic_request_active.png",
            height: 24,
          ),
          label: 'Asset Request',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/ic_livetracking.png",
            height: 24,
          ),
          activeIcon: Image.asset(
            "assets/icons/ic_livetracking_active.png",
            height: 24,
          ),
          label: 'Live Tracking',
        ),
      ],
    );
  }
}

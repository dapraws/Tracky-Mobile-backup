import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
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
      selectedLabelStyle: body2Regular.copyWith(
        fontSize: 10,
      ),
      unselectedLabelStyle: body2Regular.copyWith(
        fontSize: 10,
      ),
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/ic_home.svg',
            height: 24,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/ic_home.svg',
            colorFilter: const ColorFilter.mode(
              Colors.amber,
              BlendMode.srcIn,
            ),
            height: 24,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/ic_your_asset.svg',
            height: 24,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/ic_your_asset.svg',
            height: 24,
            colorFilter: const ColorFilter.mode(
              Colors.amber,
              BlendMode.srcIn,
            ),
          ),
          label: 'Your Asset',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/ic_asset_request.svg',
            height: 24,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/ic_asset_request.svg',
            height: 24,
            colorFilter: const ColorFilter.mode(
              Colors.amber,
              BlendMode.srcIn,
            ),
          ),
          label: 'Asset Request',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/ic_live_tracking.svg',
            height: 30,
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/ic_live_tracking.svg',
            height: 30,
            colorFilter: const ColorFilter.mode(
              Colors.amber,
              BlendMode.srcIn,
            ),
          ),
          label: 'Live Tracking',
        ),
      ],
    );
  }
}

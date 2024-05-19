import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';
import 'package:tracky/app/modules/home/views/home_view.dart';
import 'package:tracky/app/modules/your_asset/views/your_asset_view.dart';
import 'package:tracky/app/shared/widgets/bottomnavbar_widget.dart';

import '../controllers/main_controller.dart';

// ignore: must_be_immutable
class MainView extends GetView<MainController> {
  var selectedIndex = 0.obs;

  MainView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            surfaceTintColor: Colors.transparent,
            backgroundColor: Colors.white,
            title: Image.asset(
              'assets/images/logo.png',
              height: 40,
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: InkWell(
                  child: SvgPicture.asset('assets/icons/ic_profile.svg'),
                ),
              )
            ],
          ),
          drawer: const Drawer(),
          body: Center(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                HomeView(),
                YourAssetView(),
                HomeView(),
                YourAssetView(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavBar(
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
          ),
        );
      },
    );
  }
}

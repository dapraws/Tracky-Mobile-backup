import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tracky/app/modules/home/views/home_view.dart';
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
            title: Image.asset(
              "assets/images/logo.png",
              height: 40,
            ),
            centerTitle: true,
            actions: const [
              Icon(
                Icons.person_outline,
                size: 30,
              ),
            ],
          ),
          drawer: const Drawer(),
          body: Center(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                HomeView(),
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

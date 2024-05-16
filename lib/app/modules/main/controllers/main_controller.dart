import 'package:get/get.dart';
import 'package:tracky/app/data/models/bottomnavbar_model.dart';

class MainController extends GetxController {
  final BottomNavBarModel bottomNavBarModel = BottomNavBarModel();
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  final count = 0.obs;

  void increment() => count.value++;
}

import 'package:get/get.dart';

import '../controllers/your_asset_controller.dart';

class YourAssetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YourAssetController>(
      () => YourAssetController(),
    );
  }
}

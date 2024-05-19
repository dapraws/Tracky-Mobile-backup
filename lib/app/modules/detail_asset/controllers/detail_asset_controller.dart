import 'package:get/get.dart';
import 'package:tracky/app/data/models/asset_model.dart';

class DetailAssetController extends GetxController {
  final Asset asset = Get.arguments['asset'];

  final count = 0.obs;

  void increment() => count.value++;
}

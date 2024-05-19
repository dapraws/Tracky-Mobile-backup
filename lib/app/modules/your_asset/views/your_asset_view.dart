import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/your_asset_controller.dart';

class YourAssetView extends GetView<YourAssetController> {
  const YourAssetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YourAssetView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'YourAssetView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

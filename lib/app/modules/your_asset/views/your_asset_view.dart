import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tracky/app/data/models/asset_model.dart';
import 'package:tracky/app/shared/themes/font.dart';
import 'package:tracky/app/shared/widgets/listviewdata_widget.dart';
import 'package:tracky/app/shared/widgets/search_bar_widget.dart';

import '../controllers/your_asset_controller.dart';

class YourAssetView extends GetView<YourAssetController> {
  const YourAssetView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Asset List',
                style: h2Bold.copyWith(
                  color: const Color(0xFFf29e28),
                ),
              ),
              const SizedBox(height: 10),
              const SearchBarWidget(),
              const SizedBox(height: 20),
              ListViewDataWidget(listData: dummyAsset),
            ],
          ),
        ),
      ),
    );
  }
}

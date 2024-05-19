import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';
import 'package:tracky/app/data/models/asset_model.dart';
import 'package:tracky/app/shared/themes/font.dart';
import 'package:tracky/app/shared/widgets/listviewdata_widget.dart';
import 'package:tracky/app/shared/widgets/search_bar_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
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
                'Hello,',
                style: textDescriptionMedium,
              ),
              Text(
                'Admin', // change the data to dynamic
                style: h2Bold.copyWith(
                  color: const Color(0xFFf29e28),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCurrentInfo(
                    icon: 'assets/icons/ic_box_assets.svg',
                    total: '172',
                    textInfo: 'assets',
                  ),
                  // const SizedBox(width: 16),
                  _buildCurrentInfo(
                    icon: 'assets/icons/ic_truck.svg',
                    total: '45',
                    textInfo: 'deliveries',
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Ongoing activity',
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

  _buildCurrentInfo({
    required String icon,
    required String total,
    required String textInfo,
  }) {
    return Builder(
      builder: (context) {
        return Container(
          // width: 155,
          width: MediaQuery.of(context).size.width / 2 - 30,
          height: 155,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0XFFD9D9D9),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                width: 65,
                height: 65,
                fit: BoxFit.scaleDown,
              ),
              const SizedBox(height: 10),
              Text(
                total,
                style: textDescriptionSemiBold.copyWith(
                  fontSize: 20,
                  color: const Color(0xFFFFA500),
                ),
              ),
              Text(
                textInfo,
                style: textDescription,
              )
            ],
          ),
        );
      },
    );
  }
}

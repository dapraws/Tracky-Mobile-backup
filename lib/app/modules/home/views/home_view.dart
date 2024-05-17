import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Greet message
          Text("Hello,"),
          Text("Admin"),

          // Asset container
          Row(
            children: [],
          ),

          // Ongoing activity
          // Search bar
          // List
        ],
      ),
    );
  }
}

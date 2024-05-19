import 'package:get/get.dart';

import '../modules/detail_asset/bindings/detail_asset_binding.dart';
import '../modules/detail_asset/views/detail_asset_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/your_asset/bindings/your_asset_binding.dart';
import '../modules/your_asset/views/your_asset_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.YOUR_ASSET,
      page: () => const YourAssetView(),
      binding: YourAssetBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_ASSET,
      page: () => const DetailAssetView(),
      binding: DetailAssetBinding(),
    ),
  ];
}

import 'package:get/get.dart';
import 'package:getx_bmi_calculator/app/bindings/detail_binding.dart';
import 'package:getx_bmi_calculator/app/ui/pages/detail_page/detail_page.dart';
import 'package:getx_bmi_calculator/app/ui/pages/home_page/home_page.dart';

import '../bindings/home_binding.dart';
part 'app_routes.dart';

class AppPages {
  static const HOME = Routes.HOME;
  static const DETAIL = Routes.DETAIL;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
     GetPage(
      name: Routes.DETAIL,
      page: () => const DetailPage(),
      binding: DetailBinding(),
    ),
  ];
}

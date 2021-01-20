import 'package:get/get.dart';
import 'package:getx_demo/pages/first/first_binding.dart';
import 'package:getx_demo/pages/first/view/first_view.dart';
import 'package:getx_demo/pages/second/second_binding.dart';
import 'package:getx_demo/pages/second/view/second_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.FirstView;

  static final routes = [
    GetPage(
      name: Routes.FirstView,
      page: () => FirstView(),
      binding: FirstBinding(),
    ),
    GetPage(
      name: Routes.SecondView,
      page: () => SecondView(),
      binding: SecondBinding(),
    ),
  ];
}

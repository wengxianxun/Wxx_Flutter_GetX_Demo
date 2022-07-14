import 'package:get/get.dart';

import '../pages/first/first_binding.dart';
import '../pages/first/view/first_view.dart';
import '../pages/second/second_binding.dart';
import '../pages/second/view/second_view.dart';


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

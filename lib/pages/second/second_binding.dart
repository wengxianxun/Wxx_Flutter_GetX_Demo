import 'package:get/get.dart';
import 'package:getx_wxx_demo/pages/second/second_controller.dart';


class SecondBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecondController());
  }
}

import 'package:get/get.dart';
import 'package:getx_demo/pages/second/second_controller.dart';

class SecondBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecondController());
  }
}

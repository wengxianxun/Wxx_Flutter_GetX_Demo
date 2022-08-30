import 'package:get/get.dart';
import 'package:getx_wxx_demo/pages/three/three_controller.dart';

class ThreeBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => ThreeController());
    Get.create(() => ThreeController());
  }
}

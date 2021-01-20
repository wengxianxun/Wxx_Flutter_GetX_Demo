import 'package:get/get.dart';
import 'package:getx_demo/pages/first/first_controller.dart';

class FirstBinding extends Bindings {
  @override
  void dependencies() {
    // 懒加载FirstController， 请仔细阅读官方中文文档，理解Bindings和lazyPut
    Get.lazyPut(() => FirstController());
  }
}

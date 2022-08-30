import 'package:get/get.dart';

import '../../model/user_model.dart';

class ThreeController extends GetxController with StateMixin<UserModelResult> {
  ThreeController();

  var userModel = UserModel(user_age: '', user_name: '').obs;

  @override
  void onInit() {
    super.onInit();

    userModel.value = Get.arguments as UserModel; // 获取FirstView点击传递过来的model
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    print("关闭");
    super.onClose();
  }
}

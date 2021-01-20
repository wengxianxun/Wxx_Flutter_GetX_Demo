import 'package:get/get.dart';
import 'package:getx_demo/model/user_model.dart';

class SecondController extends GetxController with StateMixin<UserModelResult> {
  SecondController();

  var userModel = UserModel().obs;

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
}

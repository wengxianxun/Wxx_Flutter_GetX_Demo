import 'package:get/get.dart';

import '../../base/base_api_repository.dart';
import '../../model/user_model.dart';


class FirstController extends GetxController with StateMixin<UserModelResult> {
  // final AbStractBaseApiRepository firstRepository;
  final List list = [].obs;
  var usermodelresult = UserModelResult(userlist: []).obs;
  FirstController();

  @override
  void onInit() {
    super.onInit();

    /// 由于这是个demo，所以不进行网络请求，如果正常网络请求应该有下面这段代码执行
    // firstRepository.getUserList()..then((value) {
    //   change(value, status: RxStatus.success());
    // }, onError: (err) {
    //   print(err);
    //   change(null, status: RxStatus.error());
    // });

    /// 假装result是网络请求回来的数据
    UserModelResult result = UserModelResult.fromRawJson('{"c": 0,"result": ['
        '{"user_name":"用户1","user_age":"10岁"},'
        '{"user_name":"用户2","user_age":"11岁"}'
        ']}');

    usermodelresult.value = result;
    // 结果改变， change函数是StateMixin内部实现的，建议你细读StateMixin内部代码，内部代码对result进行obx变更通知界面
    // change(result, status: RxStatus.success());
  }

  void updateList() {
    UserModelResult result = UserModelResult.fromRawJson('{"c": 0,"result": ['
        '{"user_name":"用户1","user_age":"10岁"},'
        '{"user_name":"用户2","user_age":"11岁"},'
        '{"user_name":"用户2","user_age":"12岁"},'
        '{"user_name":"用户2","user_age":"13岁"},'
        '{"user_name":"用户2","user_age":"14岁"}'
        ']}');

    usermodelresult.value = result;
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
}

import 'package:get/get.dart';

import '../model/user_model.dart';

// ignore: one_member_abstracts
abstract class AbstractBaseApiProvider {
  Future<Response<UserModelResult>> getUserList(String path);
}

class BaseApiProvider extends GetConnect implements AbstractBaseApiProvider {
  @override
  void onInit() {
    // 请求url基础配置
    httpClient.baseUrl = 'http://192.168.3.3:8888/baeserver/tingshu/index.php?';
  }

  @override
  Future<Response<UserModelResult>> getUserList(String path) {
    // 设置解码器，具体可以断点查看源码，这里是使用泛型来使返回结果回调给对应的model结果集合进行解析
    httpClient.defaultDecoder = UserModelResult.fromRawJson;
    // get请求
    return get(path);
  }
}

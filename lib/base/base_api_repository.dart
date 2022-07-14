

import '../model/user_model.dart';
import 'base_api_provider.dart';

abstract class AbStractBaseApiRepository {
  Future<UserModelResult> getUserList();
}

class BaseApiRepository implements AbStractBaseApiRepository {
  final AbstractBaseApiProvider provider;

  BaseApiRepository({required this.provider});

  @override
  Future<UserModelResult> getUserList() async {
    // 设置请求参数向后端请求数据
    final userlist =
        await provider.getUserList("m=user&c=usercontroller&a=userlist");

    // 返回的数据解析
    if (userlist.status.hasError) {
      return Future.error(userlist!.statusText!);
    } else {
      return userlist!.body!;
    }
  }
}

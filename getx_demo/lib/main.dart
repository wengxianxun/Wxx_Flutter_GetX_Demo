import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/base/base_api_provider.dart';
import 'package:getx_demo/base/base_api_repository.dart';
import 'package:getx_demo/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      onInit: () {
        // 初始化懒加载一些全局使用的类，可以认为这是一种单例
        Get.lazyPut<AbstractBaseApiProvider>(() => BaseApiProvider());
        Get.lazyPut<AbStractBaseApiRepository>(
            () => BaseApiRepository(provider: Get.find()));
      },
      routingCallback: (routing) {
        // 路由拦截
        if (routing.current == Routes.FirstView) {
          print("拦截路由做自己爱做的事情");
        }
      },
    );
  }
}

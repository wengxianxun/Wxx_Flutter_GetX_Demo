import 'package:get/get.dart';

abstract class FatherController<T> extends GetxController {
  final String tag = "";

  T get controller => GetInstance().find<T>(tag: tag);

  // static Object find() {
  //    GetInstance().find<T>(tag: tag);
  //   return this.controller;
  // }
}

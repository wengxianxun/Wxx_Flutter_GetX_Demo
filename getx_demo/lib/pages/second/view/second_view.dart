import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/second/second_controller.dart';

class SecondView extends GetView<SecondController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second"),
      ),
      // drawer: _drawer,
      /// 使用obx包裹，当controller中的obs属性改变会自动通知本界面对应的value进行更新界面, 类似setState局部刷新
      body: Obx(() => Container(
            color: Colors.black12,
            child: Center(
              child: Column(
                children: [
                  Text(
                    '${controller.userModel.value.user_name}',
                    style: TextStyle(fontSize: 100, color: Colors.black),
                  ),
                  Text(
                    '${controller.userModel.value.user_age}',
                    style: TextStyle(fontSize: 100, color: Colors.black),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

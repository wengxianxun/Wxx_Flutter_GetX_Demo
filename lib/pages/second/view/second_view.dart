import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../second_controller.dart';

class SecondView extends GetView<SecondController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second"),
          leading: InkWell(
            child: Icon(Icons.back_hand),
            onTap: (){
              Get.back();
              // Get.delete()
            },
          ),
        ),
        // drawer: _drawer,
        /// 使用obx包裹，当controller中的obs属性改变会自动通知本界面对应的value进行更新界面, 类似setState局部刷新
        body:
        ///  没使用，controller并不会被加入使用列表，删除的时候也不会被删除到
        // Container(
        //   child: InkWell(
        //     onTap: () {
        //       Get.changeTheme(ThemeData.light());
        //     },
        //     child: Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.red,
        //     ),
        //   ),
        // )
        /// 有使用，controller会被加入使用列表，get.back的时候会被调用delete
        Obx(() => Container(
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

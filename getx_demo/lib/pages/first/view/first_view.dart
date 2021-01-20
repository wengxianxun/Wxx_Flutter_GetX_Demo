import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/model/user_model.dart';
import 'package:getx_demo/pages/first/first_controller.dart';
import 'package:getx_demo/pages/first/view/view_user_item.dart';
import 'package:getx_demo/routes/app_pages.dart';

class FirstView extends GetView<FirstController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fist"),
      ),
      // drawer: _drawer,
      body: Container(
        color: Colors.black12,
        child: controller.obx(
          (state) {
            return GridView.builder(
              padding:
                  EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 80),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 1.35,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: state.userlist.length,
              itemBuilder: (context, index) {
                UserModel itemmodel = state.userlist[index];
                return ViewUserItem(
                  itemModel: itemmodel,
                  onItemTap: () {
                    // 点击跳转到secondview
                    Get.toNamed(Routes.SecondView, arguments: itemmodel);
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}

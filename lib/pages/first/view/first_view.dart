import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_wxx_demo/pages/first/view/view_user_item.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../../model/user_model.dart';
import '../../../routes/app_pages.dart';
import '../first_controller.dart';

class FirstView extends GetView<FirstController> {
  @override
  Widget build(BuildContext context) {
    // Get.delete()
    return Scaffold(
      appBar: AppBar(
        title: Text("Fist"),
      ),
      // drawer: _drawer,
      body: ShowCaseWidget(
        builder: Builder(builder: (context) => childview()),
      ),
      // body: Container(
      //   color: Colors.black12,
      //   child: controller.obx(
      //     (state) {
      //       return GridView.builder(
      //         padding:
      //             EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 80),
      //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: 1,
      //           childAspectRatio: 1.35,
      //           mainAxisSpacing: 10,
      //           crossAxisSpacing: 10,
      //         ),
      //         itemCount: state.userlist.length,
      //         itemBuilder: (context, index) {
      //           UserModel itemmodel = state.userlist[index];
      //           return ViewUserItem(
      //             itemModel: itemmodel,
      //             onItemTap: () {
      //               // 点击跳转到secondview
      //               Get.toNamed(Routes.SecondView, arguments: itemmodel);
      //               // Get.to(SecondView(), binding: SecondBinding());
      //
      //               // Get.offAll(SecondView(), binding: SecondBinding());
      //             },
      //           );
      //         },
      //       );
      //     },
      //   ),
      // ),
    );
  }

  Widget childview() {
    return Container(
      color: Colors.black12,
      child: Obx(
        () => GridView.builder(
          padding: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 80),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.35,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: controller.usermodelresult.value.userlist!.length,
          itemBuilder: (context, index) {
            UserModel itemmodel =
                controller.usermodelresult.value.userlist![index];
            return ViewUserItem(
              itemModel: itemmodel,
              onItemTap: () {
                // 点击跳转到secondview
                // Get.toNamed(Routes.SecondView, arguments: itemmodel);
                Get.toNamed(Routes.ThreeView, arguments: itemmodel);
                // Get.to(SecondView(), binding: SecondBinding());
                // controller.updateList();
                // Get.offAll(SecondView(), binding: SecondBinding());
              },
            );
          },
        ),
      ),
    );
  }
}

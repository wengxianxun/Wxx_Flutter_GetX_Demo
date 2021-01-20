import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/model/user_model.dart';

class ViewUserItem extends GetView {
  final VoidCallback onItemTap;
  final UserModel itemModel;
  ViewUserItem({this.itemModel, this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onItemTap,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: Colors.white,
        ),
        child: Text(
          "${itemModel.user_name}",
          style: TextStyle(fontSize: 100, color: Colors.black),
        ),
      ),
    );
  }
}

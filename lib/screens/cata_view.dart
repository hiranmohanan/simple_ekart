import 'dart:ui';

import 'package:demo_ekar_app/controller/app_controller.dart';
import 'package:demo_ekar_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_colors.dart';

class catageryList extends StatelessWidget {
  catageryList({super.key});
  final AppController appC = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text("Category", style: TextStyle(fontSize: 25)),
        )),
        backgroundColor: AppColors.cyanDark,
        body: Obx(() => ListView.builder(
              itemCount: appC.dataList.length,
              itemBuilder: (context, index) {
                Product itemData = appC.dataList.elementAt(index);
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 3.h),
                      decoration: BoxDecoration(color: AppColors.cyanDark,
                          //borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.blackGlaze,
                                blurRadius: 8,
                                spreadRadius: 1)
                          ]),
                      height: 5.h,
                      width: 100.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            " ${itemData.pCategory}",
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            )));
  }
}

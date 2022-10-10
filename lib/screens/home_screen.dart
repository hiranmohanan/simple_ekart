import 'dart:ffi';

import 'package:demo_ekar_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_colors.dart';
import '../controller/app_controller.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final AppController appC = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cyanDark,
      body: Obx(() => ListView.builder(
            itemCount: appC.dataList.length,
            itemBuilder: (context, index) {
              Product itemData = appC.dataList.elementAt(index);
              final String img = itemData.pName;
              return Container(
                margin: EdgeInsets.only(top: 4.h, bottom: 2.h),
                decoration: BoxDecoration(color: AppColors.cyanDark,
                    //borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.blackGlaze,
                          blurRadius: 8,
                          spreadRadius: 1)
                    ]),
                height: 20.h,
                width: 100.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 14),
                      height: 18.h,
                      width: 18.h,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset('assets/Images/app$img.png'),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 20, right: 20),
                          child: SizedBox(
                            child: Text(
                              "${itemData.pName} ",
                              style: TextStyle(fontSize: 30),
                              textAlign: TextAlign.start,
                            ),
                            height: 5.h,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                          ),
                          child: Text(
                            "Rs: ${itemData.pCost}",
                            style: TextStyle(
                                fontSize: 25, color: AppColors.redDark),
                          ),
                        ),
                        Text(
                          "Stock Left: ${itemData.pAvailability}",
                          style: TextStyle(fontSize: 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("${itemData.pDetails}",
                              style: TextStyle(fontSize: 15)),
                        ),
                        Text("Category: ${itemData.pCategory}",
                            style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("quantity"),
                        Container(
                            height: 12.w,
                            width: 10.w,
                            decoration: BoxDecoration(),
                            child: TextField(
                              keyboardType: TextInputType.number,
                            )),
                      ],
                    )
                  ],
                ),
              );
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          appC.addData();
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.sort_outlined),
      ),
    );
  }
}

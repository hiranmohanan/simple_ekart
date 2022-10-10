import 'package:demo_ekar_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_colors.dart';
import '../controller/app_controller.dart';

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
              return Container(
                height: 20,
                width: 100.w,
                child: Text("${itemData.pName} Rs ${itemData.pCost}"),
              );
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          appC.addData();
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
    );
  }
}

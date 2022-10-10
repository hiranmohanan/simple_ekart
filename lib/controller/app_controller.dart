import 'dart:developer';

import 'package:demo_ekar_app/models/product_model.dart';
import 'package:demo_ekar_app/screens/cata_view.dart';
import 'package:demo_ekar_app/services/file_reader.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  var data = "Data".obs;
  var dataList = [].obs;
  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  fetchProduct() async {
    List res = await FileReader.readJsonData();
    if (res.isNotEmpty) {
      res as List<Product>;
      dataList.clear();
      dataList.addAll(res);
    }
  }

  addData() {
    Get.to(catageryList());
  }

  plusCount() {}
  minusCount() {}
}

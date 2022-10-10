import 'dart:convert';
import 'dart:developer';

import 'package:demo_ekar_app/models/product_model.dart';
import 'package:flutter/services.dart';

class FileReader {
  static Future readJsonData() async {
    //read json file
    try {
      final jsondata = await rootBundle.loadString('assets/dummy.json');
      //decode json data as list
      List<Product> productList = productFromJson(jsondata);

      return productList;
    } catch (e) {
      log("Error fetching $e ");
      return [];
    }
  }
}

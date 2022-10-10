import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'routes/app_routes.dart';
import 'theme/app_theme.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
           initialRoute: '/login',
        getPages: AppRoutes.pages,
         debugShowCheckedModeBanner: false,
                  theme: AppTheme.theme,);
    });
  }
}
import 'package:get/get.dart';

import '../screens/home_screen.dart';

class AppRoutes {
  static List<GetPage> pages = [

    GetPage(
      name: '/',
      page: () =>  HomeScreen(),
    ),
      
  ];
}

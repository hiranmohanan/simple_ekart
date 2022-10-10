import 'package:demo_ekar_app/screens/cata_view.dart';
import 'package:get/get.dart';

import '../screens/home_screen.dart';

class AppRoutes {
  static List<GetPage> pages = [
    GetPage(
      name: '/',
      page: () => HomeScreen(),
    ),
    GetPage(
      name: '/cata',
      page: () => catageryList(),
    ),
  ];
}

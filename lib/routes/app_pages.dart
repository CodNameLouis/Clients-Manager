import 'package:get/get.dart';

import 'routes_imports.dart';

class AppPages {
  AppPages._();

  static List<GetPage> pages = [
    GetPage(
      name: SplashPage.route,
      page: () => const SplashPage(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: HomePage.route,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: AddClientsPage.route,
      page: () => const AddClientsPage(),
      binding: AddClientsBindings(),
    ),
  ];
}

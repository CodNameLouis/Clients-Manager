import 'package:clients_manager/presenter/edit_client/edit_client_bindings.dart';
import 'package:clients_manager/presenter/edit_client/edit_client_page.dart';
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
    GetPage(
      name: EditClientPage.route,
      page: () => const EditClientPage(),
      binding: EditClientBindings(),
    ),
  ];
}

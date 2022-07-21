import 'package:get/get.dart';

import '../../routes/routes_imports.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.toNamed(ClientsDetailsPage.route);
    super.onInit();
  }
}

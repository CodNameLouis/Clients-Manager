import 'package:clients_manager/presenter/home/home_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.toNamed(HomePage.route);
    super.onInit();
  }
}

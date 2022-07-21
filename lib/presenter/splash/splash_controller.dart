import 'package:clients_manager/presenter/clients_details/clients_details_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.toNamed(ClientsDetailsPage.route);
    super.onInit();
  }
}

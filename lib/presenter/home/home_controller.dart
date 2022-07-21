import 'package:clients_manager/presenter/add_clients/add_clients_page.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int currentIndex = 0;

  selectItem(int index) {
    if (index == 0) {
      return Get.toNamed(AddClientsPage.route);
    }
    currentIndex = index;
    update();
  }
}

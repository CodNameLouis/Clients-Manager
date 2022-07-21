import 'package:clients_manager/presenter/add_clients/add_clients_page.dart';
import 'package:clients_manager/presenter/home/widgets/search_dialog.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int currentIndex = 0;

  selectItem(int index) {
    if (index == 1) {
      return search();
    }
    if (index == 0) {
      return Get.toNamed(AddClientsPage.route);
    }
    currentIndex = index;
    update();
  }

  void search() {
    Get.defaultDialog(content: const SearchDialog(),
    title: 'Pesquisar');
  }
}

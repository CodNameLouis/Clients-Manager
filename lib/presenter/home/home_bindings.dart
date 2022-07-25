import 'package:get/get.dart';

import '../../infra/repositories/user_repository.dart';
import 'home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserRepository(Get.find()));
    Get.put(HomeController(Get.find()));
  }
}

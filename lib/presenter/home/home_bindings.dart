import 'package:get/get.dart';

import './home_controller.dart';
import '../../infra/providers/user_provider.dart';
import '../../infra/repositories/user_repository.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserRepository(Get.find()));
    Get.lazyPut(() => UserProvider(Get.find()));
    Get.put(HomeController(Get.find()));
  }
}

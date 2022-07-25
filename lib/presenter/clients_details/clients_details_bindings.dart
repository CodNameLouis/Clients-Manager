import 'package:get/get.dart';

import './clients_details_controller.dart';
import '../../infra/repositories/user_repository.dart';

class ClientsDetailsBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserRepository(Get.find()));
    Get.put(ClientsDetailsController(Get.find()));
  }
}

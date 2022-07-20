import 'package:get/get.dart';
import './clients_details_controller.dart';

class ClientsDetailsBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ClientsDetailsController());
    }
}
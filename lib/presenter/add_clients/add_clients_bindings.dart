import 'package:get/get.dart';
import './add_clients_controller.dart';

class AddClientsBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(AddClientsController());
    }
}
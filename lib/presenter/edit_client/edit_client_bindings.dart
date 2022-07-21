import 'package:get/get.dart';
import './edit_client_controller.dart';

class EditClientBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(EditClientController());
    }
}
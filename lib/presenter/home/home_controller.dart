import 'package:get/get.dart';

import '../../infra/models/responses/user_response_model.dart';
import '../../infra/providers/user_provider.dart';
import '../../shared/utils/custom_snackbars.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  final UserProvider _userProvider;
  HomeController(this._userProvider);

  @override
  void onInit() async {
    await getUser();
    super.onInit();
  }

  List<UserResponseModel> user = [];
  Future<void> getUser() async {
    changeLoading(true);

    final _response = await _userProvider.getUser();

    if (_response.isSuccess) {
      user = _response.data ?? [];
    } else {
      CustomSnackbar.showProviderError(_response.error!);
    }

    changeLoading(false);
  }

  bool isLoading = false;
  void changeLoading(bool newValue) {
    isLoading = newValue;
    update();
  }
}

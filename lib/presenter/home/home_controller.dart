import 'package:clients_manager/infra/repositories/user_repository.dart';
import 'package:get/get.dart';

import '../../infra/models/responses/user_response_model.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  final UserRepository _userRepository;

  HomeController(this._userRepository);


  @override
  Future<void> onInit() async {
   await getUser();
    super.onInit();
  }

  List<UserResponseModel?> user = [];

  Future getUser() async {
    _changeIsLoading(false);

    try {
      user = await _userRepository.getUser();
    } catch (e) {
      Get.rawSnackbar(
        title: 'Não foi possível obter usuarios',
        message: '$e',
      );
    }

    _changeIsLoading(false);
  }

  bool isLoading = false;
  void _changeIsLoading(bool value) {
    isLoading = value;
    update();
  }




  // final UserProvider _userProvider;
  // HomeController(this._userProvider);

  // @override
  // void onInit() async {
  //   await getUser();
  //   super.onInit();
  // }

  // List<UserResponseModel> user = [];

  // Future<void> getUser() async {
  //   changeLoading(true);

  //   final _response = await _userProvider.getUser();

  //   if (_response.isSuccess) {
  //     user = _response.data ?? [];
  //   } else {
  //     CustomSnackbar.showProviderError(_response.error!);
  //   }

  //   changeLoading(false);
  // }

  // bool isLoading = false;
  // void changeLoading(bool newValue) {
  //   isLoading = newValue;
  //   update();
  // }
}

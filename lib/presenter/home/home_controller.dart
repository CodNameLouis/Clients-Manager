import 'package:get/get.dart';

import '../../infra/models/responses/user_response_model.dart';
import '../../infra/repositories/user_repository.dart';

class HomeController extends GetxController {
  final UserRepository _userRepository;
  HomeController(this._userRepository);

// OnInit = metodo que inicializa os metodos future
  @override
  Future<void> onInit() async {
    await getUser();
    super.onInit();
  }

// variavel que retorna uma lista do tipo UserResponseModel (que usaremos na view)
  List<UserResponseModel> users = [];

  Future getUser() async {
    //_changeIsLoading(true) = Metodo que informa o inicio do carregamento enquanto o metodo principal (getUser) esta rodando.
    _changeIsLoading(true);

    try {
      // a variavel users aguarda a instancia do repositorio (_userRepository) chamar o metodo getUser que retorna a nossa lista.
      users = await _userRepository.getUser();
      //(e) é uma exceção, ou seja, quando houver algum timpo de erro
      //Get.rawSnackbar = um dialogo que retorna a mensagem de erro expecificada abaixo (title e message)
    } catch (e) {
      Get.rawSnackbar(
        title: 'Não foi possível obter usuarios',
        message: '$e',
      );
    }
//_changeIsLoading(false) informa o fim do carregamento
    _changeIsLoading(false);
  }

  Future saveUser() async {
    _changeIsLoading(true);
    // var response = await _userRepository.saveUser();

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

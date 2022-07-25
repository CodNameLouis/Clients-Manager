import 'package:clients_manager/infra/models/responses/user_response_model.dart';
import 'package:get/get.dart';

import '../api_endpoints.dart';

class UserRepository {
  final GetConnect _connect;
  const UserRepository(this._connect);

// future = tipo do metodo
// list = tipo de retorno
// UserResponseModel = Tipo da lista
// GetUser = nomenclatura do metodo
// Async e await = necessario pois é um metodo futuro
// _response = Nomenclatura do retorno
//_connect = Instancia do GetConnect criada na variavel e chamada no construtor
//.get() = metodo de solicitação do GetConnect
//ApiEndpoints.user = Caminho (endPoint Criado no arquivo e classe chamado ApiEndpoints)
  Future<List<UserResponseModel>> getUser() async {
    final _response = await _connect.get(ApiEndpoints.user);

    if (_response.isOk) {
      // o .From cria uma lista a partir de outro iterable.
      return List.from(
        // aqui o .map percorre todos os itens, de item por item.
        _response.body.map((user) {
          // aqui eu mapeio o User com o .fromMap, e retorno ele para o meu .from, que está criando a lista de usuários.
          return UserResponseModel.fromMap(user);
        }),
      );
    }
// Return [] = Retorna uma lista vazia caso houver erro na _response (solicitação)
    return [];
  }

  Future<bool> saveUser(UserResponseModel user) async {
    final _response = await _connect.post(
      ApiEndpoints.user,
      user.toJson(),
    );

    if (_response.isOk) {
      return true;
    }

    return false;
  }
  // Future<ApiResponseModel<List<UserResponseModel>>> getUser() async {
  //   final _response = await _connect.get(
  //     ApiEndpoints.user,
  //   );

  //   final _responseModel = DefaultResponseModel.fromMap(_response.body);
  //   if (_responseModel.success) {
  //     return ApiResponseModel(
  //       data: List<UserResponseModel>.from(
  //         _responseModel.data.map((user) => UserResponseModel.fromMap(user)),
  //       ),
  //     );
  //   }

  //   return ApiErrorDefaultModel(
  //     message: 'Não foi possível buscar a lista de usuarios',
  //     response: _responseModel,
  //   );
  // }
}


// // statusCode: _response.statusCode?.toInt() ?? 200, success: _response.statusCode == 200 ? true : false, error: null, metadata: null
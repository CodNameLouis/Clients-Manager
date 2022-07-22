import 'package:clients_manager/infra/models/responses/user_response_model.dart';
import 'package:get/get.dart';

import '../api_endpoints.dart';

class UserRepository {
  final GetConnect _connect;
  const UserRepository(this._connect);


  Future<List<UserResponseModel?>> getUser() async {
    final _response = await _connect.get(
      ApiEndpoints.user,
    );

    if (_response.isOk) {
      return List.from(_response.body.map((e) => UserResponseModel.fromMap(e)));
    }

    return [];
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
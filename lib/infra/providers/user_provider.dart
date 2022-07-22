// import 'dart:io';

// import 'package:clients_manager/infra/repositories/user_repository.dart';

// import '../models/defaults/app_error_model.dart';
// import '../models/defaults/provider_response_model.dart';
// import '../models/responses/user_response_model.dart';

// class UserProvider {
//   final UserRepository _repository;
//   UserProvider(this._repository);

//   Future<ProviderResponseModel<List<UserResponseModel>>> getUser() async {
//     try {
//       final _response = await _repository.getUser();
//       return ProviderResponseModel.fromMap(_response.toMap());
//     } on SocketException {
//       return AppErrorDefaultModel('Erro de conexão');
//     } catch (e) {
//       return AppErrorDefaultModel('UserProvider.getUser() $e');
//     }
//   }
// }

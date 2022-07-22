import 'dart:convert';

class UserResponseModel {
  final String createAt;
  final String name;
  final String photo;
  final String email;
  final String userName;
  final String updateAt;
  final String id;

  UserResponseModel({
    required this.createAt,
    required this.name,
    required this.photo,
    required this.email,
    required this.userName,
    required this.updateAt,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'createAt': createAt});
    result.addAll({'name': name});
    result.addAll({'photo': photo});
    result.addAll({'email': email});
    result.addAll({'userName': userName});
    result.addAll({'updateAt': updateAt});
    result.addAll({'id': id});
  
    return result;
  }

  factory UserResponseModel.fromMap(Map<String, dynamic> map) {
    return UserResponseModel(
      createAt: map['createAt'] ?? '',
      name: map['name'] ?? '',
      photo: map['photo'] ?? '',
      email: map['email'] ?? '',
      userName: map['userName'] ?? '',
      updateAt: map['updateAt'] ?? '',
      id: map['id']?.toString() ?? "",
    );
  }

  String toJson() => json.encode(toMap());

  factory UserResponseModel.fromJson(String source) => UserResponseModel.fromMap(json.decode(source));
}
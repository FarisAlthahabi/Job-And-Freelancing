// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:empco/Features/Auth/Models/Base_Model.dart';

class UserResetPasswordModel extends BaseModel {
  String password;
  String token;
  UserResetPasswordModel({
    required this.password,
    required this.token,
  });

  UserResetPasswordModel copyWith({
    String? password,
    String? token,
  }) {
    return UserResetPasswordModel(
      password: password ?? this.password,
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'token': token,
    };
  }

  factory UserResetPasswordModel.fromMap(Map<String, dynamic> map) {
    return UserResetPasswordModel(
      password: map['password'] as String,
      token: map['token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserResetPasswordModel.fromJson(String source) => UserResetPasswordModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserResetPasswordModel(password: $password, token: $token)';

  @override
  bool operator ==(covariant UserResetPasswordModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.password == password &&
      other.token == token;
  }

  @override
  int get hashCode => password.hashCode ^ token.hashCode;
}

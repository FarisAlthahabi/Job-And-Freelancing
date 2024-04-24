// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:empco/data/model/Base_Model.dart';

class UserVerifyModel extends BaseModel {
  String email;
  String token;
  UserVerifyModel({
    required this.email,
    required this.token,
  });

  UserVerifyModel copyWith({
    String? email,
    String? token,
  }) {
    return UserVerifyModel(
      email: email ?? this.email,
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'token': token,
    };
  }

  factory UserVerifyModel.fromMap(Map<String, dynamic> map) {
    return UserVerifyModel(
      email: map['email'] as String,
      token: map['token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserVerifyModel.fromJson(String source) => UserVerifyModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserVerifyModel(email: $email, token: $token)';

  @override
  bool operator ==(covariant UserVerifyModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.email == email &&
      other.token == token;
  }

  @override
  int get hashCode => email.hashCode ^ token.hashCode;
}

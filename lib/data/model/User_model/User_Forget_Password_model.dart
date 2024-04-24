// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:empco/data/model/Base_Model.dart';

class UserForgetPasswordModel extends BaseModel {
  String email;
  UserForgetPasswordModel({
    required this.email,
  });

  UserForgetPasswordModel copyWith({
    String? email,
  }) {
    return UserForgetPasswordModel(
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory UserForgetPasswordModel.fromMap(Map<String, dynamic> map) {
    return UserForgetPasswordModel(
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserForgetPasswordModel.fromJson(String source) => UserForgetPasswordModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserForgetPasswordModel(email: $email)';

  @override
  bool operator ==(covariant UserForgetPasswordModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.email == email;
  }

  @override
  int get hashCode => email.hashCode;
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


import 'package:empco/Features/Auth/Models/Base_Model.dart';

class UserModel extends BaseModel {
  String first_name;
  String last_name;
  String email;
  String password;
  UserModel({
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.password,
  });

  UserModel copyWith({
    String? first_name,
    String? last_name,
    String? email,
    String? password,
  }) {
    return UserModel(
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'password': password,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      first_name: map['first_name'] as String,
      last_name: map['last_name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(first_name: $first_name, last_name: $last_name, email: $email, password: $password)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.first_name == first_name &&
      other.last_name == last_name &&
      other.email == email &&
      other.password == password;
  }

  @override
  int get hashCode {
    return first_name.hashCode ^
      last_name.hashCode ^
      email.hashCode ^
      password.hashCode;
  }
}

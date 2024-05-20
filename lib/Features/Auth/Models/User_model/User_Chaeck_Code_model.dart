// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:empco/Features/Auth/Models/Base_Model.dart';


class UserCheckCodeModel extends BaseModel {
  bool success;
  String msg;
  UserCheckCodeModel({
    required this.success,
    required this.msg,
  });

  UserCheckCodeModel copyWith({
    bool? success,
    String? msg,
  }) {
    return UserCheckCodeModel(
      success: success ?? this.success,
      msg: msg ?? this.msg,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'success': success,
      'msg': msg,
    };
  }

  factory UserCheckCodeModel.fromMap(Map<String, dynamic> map) {
    return UserCheckCodeModel(
      success: map['success'] as bool,
      msg: map['msg'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserCheckCodeModel.fromJson(String source) => UserCheckCodeModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserCheckCodeModel(success: $success, msg: $msg)';

  @override
  bool operator ==(covariant UserCheckCodeModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.success == success &&
      other.msg == msg;
  }

  @override
  int get hashCode => success.hashCode ^ msg.hashCode;
}

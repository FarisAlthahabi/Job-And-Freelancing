import 'package:dio/dio.dart';
import 'package:empco/Core/Config/Shared_Preferences.dart';
import 'package:empco/Core/Resources/varialbles.dart';
import 'package:empco/data/model/Base_Model.dart';
import 'package:empco/data/model/User_model/User_Chaeck_Code_model.dart';
import 'package:empco/data/model/User_model/User_Forget_Password_model.dart';
import 'package:empco/data/model/User_model/User_Login_Model.dart';
import 'package:empco/data/model/User_model/User_Model.dart';
import 'package:empco/data/model/User_model/User_Reset_Password_model.dart';
import 'package:empco/data/model/User_model/User_Verify_Model.dart';
import 'package:empco/data/service/Base_Service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService extends BaseService {
  Future<BaseModel> Register(UserModel user) async {
    try {
      response = await dio.post(RegisterURl, data: user.toMap());
      if (response.statusCode == 200) {
        dynamic data = response.data;
        RegisterToken = TokenModel(token: data['data']['token']);
        return RegisterToken;
      } else {
        return ErrorModel(error: response.statusMessage!);
      }
    } on Exception catch (e) {
      return ErrorModel(error: e.toString());
    }
  }

  Future<BaseModel> Verify(UserVerifyModel userVerify) async {
    try {
      response = await dio.post(VerifyURl, data: userVerify.toMap());
      if (response.statusCode == 200) {
        dynamic data = response.data;
        MessageModel message = MessageModel(message: data['msg']);
        return message;
      } else {
        return ErrorModel(error: response.statusMessage!);
      }
    } on Exception catch (e) {
      return ErrorModel(error: e.toString());
    }
  }

  Future<BaseModel> Login(UserLoginModel userLogin) async {
    try {
      response = await dio.post(LoginURl, data: userLogin.toMap());
      if (response.statusCode == 200) {
        dynamic data = response.data;
        LoginToken = TokenModel(token: data['data']['token']);
        config
            .get<SharedPreferences>()
            .setString('loginToken', LoginToken.token);
        return LoginToken;
      } else {
        return ErrorModel(error: response.statusMessage!);
      }
    } on Exception catch (e) {
      return ErrorModel(error: e.toString());
    }
  }

  Future<BaseModel> Logout() async {
    try {
      response = await dio.post(LogoutURl,
          options: Options(headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${config.get<SharedPreferences>().getString('loginToken')}",
          }));
      if (response.statusCode == 200) {
        dynamic data = response.data;
        MessageModel message = MessageModel(message: data['msg']);
        return message;
      } else {
        return ErrorModel(error: response.statusMessage!);
      }
    } on Exception catch (e) {
      return ErrorModel(error: e.toString());
    }
  }

  Future<BaseModel> ForgetPassword(
      UserForgetPasswordModel userForgetPassword) async {
    try {
      response =
          await dio.post(ForgetPasswordURl, data: userForgetPassword.toMap());
      if (response.statusCode == 200) {
        dynamic data = response.data;
        MessageModel message = MessageModel(message: data['msg']);
        return message;
      } else {
        return ErrorModel(error: response.statusMessage!);
      }
    } on Exception catch (e) {
      return ErrorModel(error: e.toString());
    }
  }

  Future<BaseModel> CheckCode(TokenModel token) async {
    try {
      response = await dio.post(CheckCodeURl, data: token.toMap());
      if (response.statusCode == 200) {
        dynamic data = response.data;
        UserCheckCodeModel userCheckCode = UserCheckCodeModel.fromMap(data);
        return userCheckCode;
        // MessageModel message = MessageModel(message: data['msg']);
        // return message;
      } else {
        return ErrorModel(error: response.statusMessage!);
      }
    } on Exception catch (e) {
      return ErrorModel(error: e.toString());
    }
  }

  Future<BaseModel> ResetPassword(
      UserResetPasswordModel userResetPassword) async {
    try {
      response =
          await dio.post(ResetPasswordURl, data: userResetPassword.toMap());
      if (response.statusCode == 200) {
        dynamic data = response.data;
        MessageModel message = MessageModel(message: data['msg']);
        return message;
      } else {
        return ErrorModel(error: response.statusMessage!);
      }
    } on Exception catch (e) {
      return ErrorModel(error: e.toString());
    }
  }
}

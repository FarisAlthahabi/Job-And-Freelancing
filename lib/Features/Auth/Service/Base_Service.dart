import 'package:dio/dio.dart';
import 'package:empco/Core/Config/Shared_Preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<String> roles = ['freelancer', 'owner', 'seeker'];
class BaseService {
  Dio dio = Dio();
  late Response response;
  String RegisterURl = 'http://127.0.0.1:8000/api/${config.get<SharedPreferences>().getString('role')}/register';
  String LoginWithGoogleURl = 'http://127.0.0.1:8000/auth/redirect/${config.get<SharedPreferences>().getString('role')}';
  String VerifyURl = 'http://127.0.0.1:8000/api/${config.get<SharedPreferences>().getString('role')}/verify';
  String LoginURl = 'http://127.0.0.1:8000/api/${config.get<SharedPreferences>().getString('role')}/login';
  String LogoutURl = 'http://127.0.0.1:8000/api/${config.get<SharedPreferences>().getString('role')}/logout';
  String ForgetPasswordURl =
      'http://127.0.0.1:8000/api/${config.get<SharedPreferences>().getString('role')}/forgetpassword';
  String CheckCodeURl =
      'http://127.0.0.1:8000/api/${config.get<SharedPreferences>().getString('role')}/check-code';
  String ResetPasswordURl =
      'http://127.0.0.1:8000/api/${config.get<SharedPreferences>().getString('role')}/resetpassword';
      
}

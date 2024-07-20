import 'package:empco/Features/Auth/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

const isRegistered = 'isRegistered';
const isLogin = 'isLogin';
const role = 'role';
const userRole = ['freelancer', 'owner', 'seeker'];
const freelancer = 'freelancer';
const owner = 'owner';
const seeker = 'seeker';

GetIt config = GetIt.instance;

setup() async {
  config.registerSingleton(await SharedPreferences.getInstance());

  config.registerFactory(() => AuthBloc(),);
}

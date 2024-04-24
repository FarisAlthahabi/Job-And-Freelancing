import 'package:bloc/bloc.dart';
import 'package:empco/Core/Config/Bloc_Observer.dart';
import 'package:empco/Core/Config/Router.dart';
import 'package:empco/Core/Config/Shared_Preferences.dart';
import 'package:flutter/material.dart';

void main() async {
  // SeekerModel user = SeekerModel(
  //     first_name: 'faris',
  //     last_name: 'golden',
  //     email: 'farisalthahabi04@gmail.com',
  //     password: 'faris04go');
  // print(await SeekerService().seekerRegister(user));

  // SeekerVerifyModel seekerVerify =
  //     SeekerVerifyModel(email: 'farisalthahabi04@gmail.com', token: '477056');
  //      print(await SeekerService().seekerVerify(seekerVerify));

  // SeekerLoginModel seekerLogin =
  //     SeekerLoginModel(email: 'farisalthahabi04@gmail.com', password: 'faris04go');
  //      print(await SeekerService().seekerLogin(seekerLogin));

  //print(await SeekerService().seekerLogout());

  // SeekerForgetPasswordModel seekerForgetPassword =
  //     SeekerForgetPasswordModel(email: 'farisalthahabi04@gmail.com');
  //     print(await SeekerService().seekerForgetPassword(seekerForgetPassword));

  // TokenModel token =
  //     TokenModel(token: '766550');
  //     print(await SeekerService().seekerCheckCode(token));

  // SeekerResetPasswordModel seekerResetPassword =
  //     SeekerResetPasswordModel(password: 'faris04go', token: '766550');
  // print(await SeekerService().seekerResetPassword(seekerResetPassword));
  setup();
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        //  MaterialApp(
        //   debugShowCheckedModeBanner: false,
        //   home: HomePage(),
        // );
        MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}

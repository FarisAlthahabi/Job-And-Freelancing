// ignore_for_file: file_names

import 'package:empco/Features/Auth/View/Auth_Pages/Forget_Password_Page.dart';
import 'package:empco/Features/Auth/View/Auth_Pages/Login_Page.dart';
import 'package:empco/Features/Auth/View/Auth_Pages/Register_Page.dart';
import 'package:empco/Features/Auth/View/Auth_Pages/Select_Role_Page.dart';
import 'package:empco/Features/Auth/View/Auth_Pages/Verify_Email_page.dart';
import 'package:empco/UI/Home_Page.dart';
import 'package:empco/Features/Intro/View/intro_pages/Info_Screens.dart';
import 'package:empco/Features/Intro/View/intro_pages/Spalsh_Screen.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(
    path:'/' ,
    builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
    path:'/Info' ,
    builder: (context, state) => const InfoScreens(),
    ),
    GoRoute(
    path:'/Login' ,
    builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
    path:'/SelectRole' ,
    builder: (context, state) => const SelectRolePage(),
    ),
    GoRoute(
    path:'/Signup' ,
    builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
    path:'/Verify/:email' ,
    name: 'sample',
    builder: (context, state) => VerifyEmailPage(email: state.pathParameters['email']!,),
    ),
    GoRoute(
    path:'/ForgetPassword' ,
    builder: (context, state) => const ForgetPasswordPage(),
    ),
    GoRoute(
    path:'/HomePage' ,
    builder: (context, state) =>const HomePage(),
    )
]);

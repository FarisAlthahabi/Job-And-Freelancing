import 'package:empco/UI/Forget_Password_Page.dart';
import 'package:empco/UI/Home_Page.dart';
import 'package:empco/UI/Info_Screens.dart';
import 'package:empco/UI/Login_Page.dart';
import 'package:empco/UI/Register_Page.dart';
import 'package:empco/UI/Select_Role_Page.dart';
import 'package:empco/UI/Spalsh_Screen.dart';
import 'package:empco/UI/Verify_Email_page.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(
    path:'/' ,
    builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
    path:'/Info' ,
    builder: (context, state) => InfoScreens(),
    ),
    GoRoute(
    path:'/Login' ,
    builder: (context, state) => LoginPage(),
    ),
    GoRoute(
    path:'/SelectRole' ,
    builder: (context, state) => SelectRolePage(),
    ),
    GoRoute(
    path:'/Signup' ,
    builder: (context, state) => RegisterPage(),
    ),
    GoRoute(
    path:'/Verify/:email' ,
    name: 'sample',
    builder: (context, state) => VerifyEmailPage(email: state.pathParameters['email']!,),
    ),
    GoRoute(
    path:'/ForgetPassword' ,
    builder: (context, state) => ForgetPasswordPage(),
    ),
    GoRoute(
    path:'/HomePage' ,
    builder: (context, state) => HomePage(),
    )
]);

// ignore_for_file: non_constant_identifier_names

import 'package:empco/Core/Config/Shared_Preferences.dart';
import 'package:empco/Core/Widgets/Loading_Page.dart';
import 'package:empco/Core/Widgets/Show_SnackBar_Method.dart';
import 'package:empco/Core/Widgets/Tilte_of_Page.dart';
import 'package:empco/Features/Auth/View/widgets/Empco_Icon.dart';
import 'package:empco/Features/Auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

TextEditingController Email = TextEditingController();
TextEditingController Password = TextEditingController();
bool obsecure = true;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is SuccessToLoginState) {
            config.get<SharedPreferences>().setBool('isLogin', true);
            showSnackBarMethod(
                context, 'You are Logged in Successfully', Colors.green);
            Email.clear();
            Password.clear();
            context.go('/HomePage');
          } else if (state is FailedToLoginState) {
            if(Email.text.isEmpty || Password.text.isEmpty){
              showSnackBarMethod(context, 'Email or password can not be empty', Colors.red);
            }
            else{
              showSnackBarMethod(context, 'Failed to login', Colors.red);
            }
            
          } else {
            if (state is SuccessToLoginWithGoogleState) {
              showSnackBarMethod(
                  context, 'You are Logged in Successfully', Colors.green);
              context.go('/HomePage');
            } else if (state is FailedToLoginWithGoogleState) {
              showSnackBarMethod(
                  context, 'Fail to Login with google', Colors.red);
            }
          }
        },
        builder: (context, state) {
          if (state is LoadingState) {
            return const LoadingPage();
          }
          if (state is AuthInitial ||
              state is SuccessToLoginState ||
              state is FailedToLoginState ||
              state is SuccessToLoginWithGoogleState ||
              state is FailedToLoginWithGoogleState) {
            return SafeArea(
              child: Scaffold(
                body: Stack(
                  children: [
                    EmpcoIcon(paddingTop: 10, paddingLeft: 10, iconHeight: 50, iconWidth: 50,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TitleOfPage(text: 'Welcome back!'),
                        ),
                        SvgPicture.asset(
                          'lib/Core/Resources/assets/SVG/LoginImage.svg',
                          semanticsLabel: 'My SVG Image',
                        ),
                        const Text(
                          'Log in to your account',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 250),
                          child: Text(
                            'Email Address',
                            style: TextStyle(
                                color: Color.fromRGBO(102, 96, 96, 1),
                                fontSize: 11.06,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 336.28,
                            height: 38.72,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(242, 239, 239, 1),
                            ),
                            child: TextField(
                              controller: Email,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.email_outlined),
                                prefixIconColor:
                                    Color.fromRGBO(172, 161, 161, 1),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 270),
                          child: Text(
                            'Password',
                            style: TextStyle(
                                color: Color.fromRGBO(102, 96, 96, 1),
                                fontSize: 11.06,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 336.28,
                            height: 38.72,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(242, 239, 239, 1),
                            ),
                            child: StatefulBuilder(
                              builder: (context, setState) {
                                return TextField(
                                  obscureText: obsecure,
                                  controller: Password,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: const Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(
                                          () {
                                            obsecure = !obsecure;
                                          },
                                        );
                                      },
                                      icon: const Icon(
                                          Icons.remove_red_eye_outlined),
                                    ),
                                    prefixIconColor:
                                        const Color.fromRGBO(172, 161, 161, 1),
                                    suffixIconColor:
                                        const Color.fromRGBO(172, 161, 161, 1),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 240),
                          child: TextButton(
                            onPressed: () {
                              context.go('/ForgetPassword');
                            },
                            child: const Text(
                              'Forgot Passowrd',
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 11.06,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            BlocProvider.of<AuthBloc>(context).add(LoginEvent(
                                email: Email.text, password: Password.text));
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          },
                          child: Container(
                            width: 170.12,
                            height: 53,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(29, 91, 164, 1),
                                borderRadius: BorderRadius.circular(327.16),
                                boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(0, 4),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      color: Color.fromRGBO(0, 0, 0, 0.5))
                                ]),
                            child: const Center(
                              child: Text(
                                'LogIn',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.09,
                                    fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'Or',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 14.06,
                              fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center,
                        ),
                        InkWell(
                          onTap: () {
                            BlocProvider.of<AuthBloc>(context)
                                .add(LoginWithGoogleEvent());
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            // Email.clear();
                            // Password.clear();
                            //context.go('/HomePage');
                          },
                          child: Container(
                            width: 233.05,
                            height: 37.88,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(233.83),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Image.asset(
                                //   'lib/Core/Resources/assets/googleIcon.png',
                                // ),
                                SvgPicture.asset(
                                  'lib/Core/Resources/assets/SVG/googleIcon.svg',
                                  semanticsLabel: 'My SVG Image',
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Text(
                                    'Continue With Google',
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 12.21,
                                        fontWeight: FontWeight.w700),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: InkWell(
                              onTap: () {
                                context.go('/SelectRole');
                              },
                              child: const SizedBox(
                                // color: Colors.amber,
                                width: 150,
                                child: Row(
                                  children: [
                                    Text(
                                      'First time here?',
                                      style: TextStyle(
                                          color: Color.fromRGBO(29, 91, 164, 1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w800),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Sign UP',
                                      style: TextStyle(
                                          color: Color.fromRGBO(38, 50, 56, 1),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w800),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          } else {
            return const SafeArea(
              child: SafeArea(
                child: Scaffold(
                  body: Center(
                    child: Text('error'),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

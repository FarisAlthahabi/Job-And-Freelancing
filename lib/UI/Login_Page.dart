import 'package:empco/Core/Config/Shared_Preferences.dart';
import 'package:empco/UI/Shared_Widgets/Tilte_of_Page.dart';
import 'package:empco/data/bloc/bloc/auth_bloc.dart';
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
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              duration: Duration(seconds: 3),
              content: Text('Login is done successfully'),
              backgroundColor: Colors.green,
              behavior: SnackBarBehavior.floating,
            ));
            context.go('/HomePage');
          }
          else if(state is FailedToLoginState){
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              duration: Duration(seconds: 3),
              content: Text('Failed to login'),
              backgroundColor: Colors.red,
              behavior: SnackBarBehavior.floating,
            ));
          }
        },
        builder: (context, state) {
          if (state is LoadingState) {
            return const SafeArea(
              child: Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }
          if (state is AuthInitial ||
              state is SuccessToLoginState ||
              state is FailedToLoginState) {
            return SafeArea(
              child: Scaffold(
                body: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child:
                          // Image.asset('lib/Core/Resources/assets/Group 1.png',
                          //     scale: 1.8),
                          SvgPicture.asset(
                        'lib/Core/Resources/assets/SVG/empcoIcon.svg',
                        semanticsLabel: 'My SVG Image',
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TitleOfPage(text: 'Welcome back!'),
                        ),
                        // Image.asset(
                        //   'lib/Core/Resources/assets/LoginImage.png',
                        // ),
                        SvgPicture.asset(
                          'lib/Core/Resources/assets/SVG/LoginImage.svg',
                          semanticsLabel: 'My SVG Image',
                        ),
                        Text(
                          'Log in to your account',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 250),
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
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(242, 239, 239, 1),
                            ),
                            child: TextField(
                              controller: Email,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.email_outlined),
                                prefixIconColor:
                                    Color.fromRGBO(172, 161, 161, 1),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 270),
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
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(242, 239, 239, 1),
                            ),
                            child: StatefulBuilder(
                              builder: (context, setState) {
                                return TextField(
                                  obscureText: obsecure,
                                  controller: Password,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(
                                          () {
                                            obsecure = !obsecure;
                                          },
                                        );
                                      },
                                      icon: Icon(Icons.remove_red_eye_outlined),
                                    ),
                                    prefixIconColor:
                                        Color.fromRGBO(172, 161, 161, 1),
                                    suffixIconColor:
                                        Color.fromRGBO(172, 161, 161, 1),
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
                            child: Text(
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
                            BlocProvider.of<AuthBloc>(context)
                                .add(LoginEvent(email: Email.text, password: Password.text));
                          },
                          child: Container(
                            width: 170.12,
                            height: 53,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(29, 91, 164, 1),
                                borderRadius: BorderRadius.circular(327.16),
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 4),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      color: Color.fromRGBO(0, 0, 0, 0.5))
                                ]),
                            child: Center(
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
                        Text(
                          'Or',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 14.06,
                              fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center,
                        ),
                        InkWell(
                          onTap: () {
                            context.go('/HomePage');
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
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
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
                              child: Container(
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
                        SizedBox(
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

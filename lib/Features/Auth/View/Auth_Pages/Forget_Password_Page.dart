import 'package:empco/Core/Widgets/Loading_Page.dart';
import 'package:empco/Core/Widgets/Show_SnackBar_Method.dart';
import 'package:empco/Features/Auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

// ignore: non_constant_identifier_names
TextEditingController Email = TextEditingController();

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is SuccessToForgetPasswordState) {
            context.goNamed("sample", pathParameters: {'email': Email.text});
            showSnackBarMethod(
              context,
              'Check your email box to verify your email',
              Colors.green,
            );
            Email.clear();
          } else if (state is FailedToForgetPasswordState) {
            if (Email.text.isEmpty) {
              showSnackBarMethod(
                  context, 'Email or password can not be empty', Colors.red);
            } else {
              showSnackBarMethod(context, state.error.error, Colors.red);
            }
          }
        },
        builder: (context, state) {
          if (state is LoadingState) {
            return const LoadingPage();
          } else if (state is AuthInitial ||
              state is SuccessToForgetPasswordState ||
              state is FailedToForgetPasswordState) {
            return SafeArea(
              child: Scaffold(
                body: Column(
                  children: [
                    const SizedBox(
                      height: 54,
                    ),
                    SvgPicture.asset(
                      'lib/Core/Resources/assets/SVG/keyImage.svg',
                      semanticsLabel: 'My SVG Image',
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    const Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 20,
                          //   height: 30,
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      'No worries, We will send you reset instructions.',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          // height: 15,
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Please Enter your email',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 40,
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
                    const SizedBox(
                      height: 10,
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
                            prefixIconColor: Color.fromRGBO(172, 161, 161, 1),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        BlocProvider.of<AuthBloc>(context)
                            .add(ForgetPasswordEvent(email: Email.text));
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      },
                      child: Container(
                        width: 134.53,
                        height: 41.91,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(29, 91, 164, 1),
                            borderRadius: BorderRadius.circular(258.71),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  color: Color.fromRGBO(0, 0, 0, 0.5))
                            ]),
                        child: const Center(
                          child: Text(
                            'Reset Password',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.51,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          context.go('/Login');
                          Email.clear();
                        },
                        child: const SizedBox(
                          // color: Colors.amber,
                          width: 120,
                          child: Row(
                            children: [
                              Icon(Icons.arrow_back),
                              Text(
                                'back to Log In',
                                style: TextStyle(
                                    color: Color.fromRGBO(75, 72, 72, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const SafeArea(
              child: Scaffold(
                body: Center(
                  child: Text('error'),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

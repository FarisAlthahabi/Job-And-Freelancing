import 'package:empco/data/bloc/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

TextEditingController Email = TextEditingController();

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 54,
              ),
              // Image.asset('lib/Core/Resources/assets/keyImage.png'),
              SvgPicture.asset(
                'lib/Core/Resources/assets/SVG/keyImage.svg',
                semanticsLabel: 'My SVG Image',
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 20,
                    //   height: 30,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'No worries, We will send you reset instructions.',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    // height: 15,
                    fontSize: 10,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Please Enter your email',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
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
              SizedBox(
                height: 10,
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
                      prefixIconColor: Color.fromRGBO(172, 161, 161, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // BlocProvider.of<AuthBloc>(context).add(ForgetPasswordEvent(email: Email.text
                  //     ));
    context.goNamed("sample", pathParameters: {'email': Email.text});
                 //context.go('/Verify');
                },
                child: Container(
                  width: 134.53,
                  height: 41.91,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(29, 91, 164, 1),
                      borderRadius: BorderRadius.circular(258.71),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                            blurRadius: 4,
                            color: Color.fromRGBO(0, 0, 0, 0.5))
                      ]),
                  child: Center(
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
              SizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    context.go('/Login');
                  },
                  child: Container(
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
      ),
    );
  }
}

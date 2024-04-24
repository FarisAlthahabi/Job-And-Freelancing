import 'package:empco/UI/Shared_Widgets/Tilte_of_Page.dart';
import 'package:empco/data/bloc/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

TextEditingController Firstname = TextEditingController();
TextEditingController Lastname = TextEditingController();
TextEditingController Email = TextEditingController();
TextEditingController Password = TextEditingController();
TextEditingController ConfirmPassword = TextEditingController();
bool obsecure = true;

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocConsumer<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const SafeArea(
              child: Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          } else if (state is AuthInitial ||
              state is SuccessToRegisterState ||
              state is FailedToRegisterState) {
            return Scaffold(
              body: SafeArea(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child:
                      //  Image.asset('lib/Core/Resources/assets/Group 1.png',
                      //     scale: 1.8),
                      SvgPicture.asset( 
           'lib/Core/Resources/assets/SVG/empcoIcon.svg', 
           semanticsLabel: 'My SVG Image', 
         ),
                    ),
                    Center(
                        child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        TitleOfPage(text: 'Registering you '),
                        // Image.asset('lib/Core/Resources/assets/SignupImage.png'),
                        SvgPicture.asset( 
           'lib/Core/Resources/assets/SVG/SignupImage.svg', 
           semanticsLabel: 'My SVG Image', 
         ),
                        const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 20,
                              //   height: 30,
                              fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: SizedBox(
                            // color: Colors.amber,
                            width: 320,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'First Name',
                                      style: TextStyle(
                                          color: Color.fromRGBO(102, 96, 96, 1),
                                          fontSize: 11.06,
                                          fontWeight: FontWeight.w700),
                                      textAlign: TextAlign.center,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 39,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(242, 239, 239, 1),
                                      ),
                                      child: TextField(
                                        controller: Firstname,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: Icon(Icons.person),
                                          prefixIconColor:
                                              Color.fromRGBO(172, 161, 161, 1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Last Name',
                                      style: TextStyle(
                                          color: Color.fromRGBO(102, 96, 96, 1),
                                          fontSize: 11.06,
                                          fontWeight: FontWeight.w700),
                                      textAlign: TextAlign.center,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 39,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(242, 239, 239, 1),
                                      ),
                                      child: TextField(
                                        controller: Lastname,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: Icon(Icons.person),
                                          prefixIconColor:
                                              Color.fromRGBO(172, 161, 161, 1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 240),
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
                            width: 320.28,
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
                          height: 7,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 275),
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
                            width: 320.28,
                            height: 38.72,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(242, 239, 239, 1),
                            ),
                            child: StatefulBuilder(
                              builder: (context, setState) {
                                return TextField(
                                  controller: Password,
                                  obscureText: obsecure,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: const Icon(Icons.lock),
                                    prefixIconColor:
                                        const Color.fromRGBO(172, 161, 161, 1),
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
                                    suffixIconColor:
                                        const Color.fromRGBO(172, 161, 161, 1),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 220),
                          child: Text(
                            'Confirm Password',
                            style: TextStyle(
                                color: Color.fromRGBO(102, 96, 96, 1),
                                fontSize: 11.06,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 320.28,
                            height: 38.72,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(242, 239, 239, 1),
                            ),
                            child: StatefulBuilder(
                              builder: (context, setState) {
                                return TextField(
                                  obscureText: obsecure,
                                  controller: ConfirmPassword,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: const Icon(Icons.lock),
                                    prefixIconColor:
                                        const Color.fromRGBO(172, 161, 161, 1),
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
                                    suffixIconColor:
                                        const Color.fromRGBO(172, 161, 161, 1),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            if (Password.text == ConfirmPassword.text) {
                              BlocProvider.of<AuthBloc>(context).add(
                                  RegisterEvent(
                                      first_name: Firstname.text,
                                      last_name: Lastname.text,
                                      email: Email.text,
                                      password: Password.text));
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(new SnackBar(
                                duration: Duration(seconds: 3),
                                content: Text(
                                    'Password and confirm password are not the same'),
                                backgroundColor: Colors.red,
                                behavior: SnackBarBehavior.floating,
                              ));
                            }
                
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             VerifyEmailPage(email: Email.text)));
                            //context.go('/Verify');
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
                                'Sign up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.09,
                                    fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Or',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 14.06,
                              fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                           // context.go('/Verify');
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
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              context.go('/Login');
                            },
                            child: const SizedBox(
                              // color: Colors.amber,
                              width: 150,
                              child: Row(
                                children: [
                                  Text(
                                    'Already Registerd?',
                                    style: TextStyle(
                                        color: Color.fromRGBO(29, 91, 164, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    'Login',
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
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ))
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
        listener: (context, state) {
          if (state is SuccessToRegisterState) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              duration: Duration(seconds: 3),
              content: Text('You are registered successfully'),
              backgroundColor: Colors.green,
              behavior: SnackBarBehavior.floating,
            ));
            
            context.goNamed("sample", pathParameters: {'email': Email.text});
          } else if (state is FailedToRegisterState) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              duration: Duration(seconds: 3),
              content: Text('Check your internet connection and try again'),
              backgroundColor: Colors.red,
              behavior: SnackBarBehavior.floating,
            ));
          }
        },
      ),
    );
  }
}

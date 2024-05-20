// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:empco/Core/Config/Shared_Preferences.dart';
import 'package:empco/Core/Widgets/Show_SnackBar_Method.dart';
import 'package:empco/Features/Auth/View/widgets/Empco_Icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'package:empco/Core/Widgets/Tilte_of_Page.dart';
import 'package:empco/Features/Auth/bloc/auth_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<TextEditingController> VerificationCode =
    List.generate(6, (i) => TextEditingController());
bool isWrongCode = false;

// ignore: must_be_immutable
class VerifyEmailPage extends StatelessWidget {
  String email;
  VerifyEmailPage({
    Key? key,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is SuccessToVerifyState) {
            showSnackBarMethod(context,
                'Email is verified successfully', Colors.green);
            config.get<SharedPreferences>().setBool('isRegistered', true);
            context.go('/Login');
          } else if (state is FailedToVerifyState) {
            isWrongCode = true;
            showSnackBarMethod(context,
                'Failed to verify your email', Colors.red);
          }
        },
        builder: (context, state) {
          if (state is LoadingState) {
            return const SafeArea(
                child: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ));
          } else if (state is AuthInitial ||
              state is SuccessToVerifyState ||
              state is FailedToVerifyState) {
            return SafeArea(
              child: Scaffold(
                body: Stack(
                  children: [
                     EmpcoIcon(paddingTop: 10, paddingLeft: 10, iconHeight: 50, iconWidth: 50,),
                    Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          TitleOfPage(text: 'Registering you '),
                          // Image.asset('lib/Core/Resources/assets/VerifyImage.png'),
                          SvgPicture.asset(
                            'lib/Core/Resources/assets/SVG/VerifyImage.svg',
                            semanticsLabel: 'My SVG Image',
                          ),
                          const Text(
                            'Verify your email',
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 15,
                                //   height: 30,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text.rich(TextSpan(
                              text:
                                  'A verification code has been sent to your email\n',
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                              children: [
                                TextSpan(
                                    text: 'example@gmail.com',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: ', please put the code here')
                              ])),
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: SizedBox(
                              //  color: Colors.amber,
                              width: 300,
                              height: 50,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 6,
                                  itemBuilder: (context, Index) {
                                    return Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: 43,
                                          height: 41,
                                          color:
                                              const Color.fromRGBO(242, 239, 239, 1),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8, right: 8, bottom: 20),
                                            child: TextField(
                                              controller:
                                                  VerificationCode[Index],
                                              decoration: const InputDecoration(),
                                              textAlign: TextAlign.center,
                                              textAlignVertical:
                                                  TextAlignVertical.center,
                                            ),
                                          ),
                                        )
                                      ],
                                    );
                                  }),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Visibility(
                            visible: isWrongCode,
                            child: const Column(
                              children: [
                                Text(
                                  'Wrong Code! retype it correclty ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 9, 9, 1),
                                      fontSize: 10,
                                      //   height: 30,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),

                          InkWell(
                            onTap: () {
                              BlocProvider.of<AuthBloc>(context).add(VerifyEvent(
                                  email: email,
                                  token:
                                      '${VerificationCode[0].text + VerificationCode[1].text + VerificationCode[2].text + VerificationCode[3].text + VerificationCode[4].text + VerificationCode[5].text}'));
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
                                  'Confirm',
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
                            height: 20,
                          ),
                          Center(
                            child: InkWell(
                              onTap: () {
                                context.go('/Signup');
                              },
                              child: Container(
                                // color: Colors.amber,
                                width: 80,
                                child: const Row(
                                  children: [
                                    Icon(Icons.arrow_back),
                                    Text(
                                      'go back',
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
                    )
                  ],
                ),
              ),
            );
          } else {
            return SafeArea(
                child: Scaffold(
              appBar: AppBar(),
              body: const Center(
                child: Text('error'),
              ),
            ));
          }
        },
      ),
    );
  }
}

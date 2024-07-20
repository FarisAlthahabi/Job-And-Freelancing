import 'package:empco/Core/Config/Shared_Preferences.dart';
import 'package:empco/Core/Config/router/Router.dart';
import 'package:empco/Core/Resources/Constants/Colors.dart';
import 'package:empco/Core/Resources/Constants/Texts.dart';
import 'package:empco/Core/Resources/Constants/assets.dart';
import 'package:empco/Core/Widgets/Buttons.dart';
import 'package:empco/Core/Widgets/Loading_Page.dart';
import 'package:empco/Core/Widgets/auth_text_field.dart';
import 'package:empco/Core/Widgets/empcoIcon_and_empcoText.dart';
import 'package:empco/Core/Widgets/show_snack_bar_method.dart';
import 'package:empco/Core/Widgets/text_widgets.dart';
import 'package:empco/Features/Auth/View/Login/Widgets/Texts.dart';
import 'package:empco/Features/Auth/View/Login/Widgets/buttons.dart';
import 'package:empco/Features/Auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LoginViewCallbacks {
  void onForgetPasswordTap(BuildContext context);

  void onLoginTap(BuildContext context);

  void onContionueWithGoogleTap(BuildContext context);

  void onSignUpTap(BuildContext context);

  void onSuccessToLoginStateListened(BuildContext context);

  void onFailedToLoginStateListened(BuildContext context);

  void onSuccessToLoginWithGoogleStateListened(BuildContext context);

  void onFailedToLoginWithGoogleStateListened(BuildContext context);

  void onEmailChanged(String email);

  void onPasswordChanged(String password);

  void onEmailSubmitted(String email);

  void onPasswordSubmitted(String password);
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> implements LoginViewCallbacks {
  late final AuthBloc authBloc = context.read();

  String email = '';
  String password = '';

  final emailFocusNode = FocusNode();

  final passwordFocusNode = FocusNode();

  @override
  void onEmailChanged(String emailInput) {
    email = emailInput;
  }

  @override
  void onEmailSubmitted(String email) {
    passwordFocusNode.requestFocus();
  }

  @override
  void onPasswordChanged(String passwordInput) {
    password = passwordInput;
  }

  @override
  void onPasswordSubmitted(String password) {}

  @override
  void dispose() {
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  void onContionueWithGoogleTap(context) {
    BlocProvider.of<AuthBloc>(context).add(LoginWithGoogleEvent());
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  @override
  void onForgetPasswordTap(context) {
    context.go('$mainRoute$introRoute/$forgetPasswordRoute');
  }

  @override
  void onLoginTap(context) {
    BlocProvider.of<AuthBloc>(context)
        .add(LoginEvent(email: email, password: password));
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  @override
  void onSignUpTap(context) {
    context.go('$mainRoute$introRoute/$signUpRoute');
  }

  @override
  void onFailedToLoginStateListened(BuildContext context) {
    if (email.isEmpty || password.isEmpty) {
      showSnackBarMethod(context, emailOrPasswordEmpty, red);
    } else {
      showSnackBarMethod(context, loginFail, red);
      email = '';
      password = '';
    }
  }

  @override
  void onFailedToLoginWithGoogleStateListened(BuildContext context) {
    showSnackBarMethod(context, loginWithGoogleFail, red);
  }

  @override
  void onSuccessToLoginStateListened(BuildContext context) {
    config.get<SharedPreferences>().setBool(isLogin, true);
    showSnackBarMethod(context, loginSuccess, green);
    if(config.get<SharedPreferences>().getString(role) == 'freelancer'){
      context.go('$mainRoute$introRoute/$freelancerHomePageRoute');
    }
    else if(config.get<SharedPreferences>().getString(role) == 'owner'){
      context.go('$mainRoute$introRoute/$companyHomePageRoute');
    }
    else{
      context.go('$mainRoute$introRoute/$customerHomePageRoute');
    }
    //dispose();
  }

  @override
  void onSuccessToLoginWithGoogleStateListened(BuildContext context) {
    showSnackBarMethod(context, loginSuccess, green);
    if(config.get<SharedPreferences>().getString(role) == 'freelancer'){
      context.go('$mainRoute$introRoute/$freelancerHomePageRoute');
    }
    else if(config.get<SharedPreferences>().getString(role) == 'owner'){
      context.go('$mainRoute$introRoute/$companyHomePageRoute');
    }
    else{
      context.go('$mainRoute$introRoute/$customerHomePageRoute');
    }
  }

  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    var screenSize = deviceData.size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is SuccessToLoginState) {
            onSuccessToLoginStateListened(context);
          } else if (state is FailedToLoginState) {
            onFailedToLoginStateListened(context);
          } else {
            if (state is SuccessToLoginWithGoogleState) {
              onSuccessToLoginWithGoogleStateListened(context);
            } else if (state is FailedToLoginWithGoogleState) {
              onFailedToLoginWithGoogleStateListened(context);
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
                    const EmpcoIcon(
                      paddingTop: 10,
                      paddingLeft: 10,
                      iconHeight: 50,
                      iconWidth: 50,
                    ),
                    Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(height: 20),
                            TitleOfPage(text: welcomeBack),
                            SvgPicture.asset(
                              loginImage,
                            ),
                            const TextForLoginPage(),
                            SizedBox(
                              width: 0.91 * screenWidth,
                              child: AuthTextField(
                                focusNode: emailFocusNode,
                                onChanged: onEmailChanged,
                                onSubmitted: onEmailSubmitted,
                                prefixIcon: const Icon(Icons.email_outlined),
                                title: emailAddress,
                              ),
                            ),
                            SizedBox(
                              width: 0.91 * screenWidth,
                              child: AuthTextField(
                                prefixIcon: const Icon(Icons.lock),
                                focusNode: passwordFocusNode,
                                onChanged: onPasswordChanged,
                                onSubmitted: onPasswordSubmitted,
                                isPassword: true,
                                title: passwordText,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ForgetPasswordTextButton(
                              screenWidth: screenWidth,
                              onTap: () {
                                onForgetPasswordTap(context);
                              },
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            AuthMainButton(
                              width: 0.86 * screenWidth,
                              height: 0.07 * screenHeight,
                              text: loginText,
                              blurRadius: 4,
                              yAxisOffset: 4,
                              shadowColor: boxShadowColor1,
                              fontSize: 17.09,
                              onTap: () {
                                onLoginTap(context);
                              },
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const OrText(),
                            const SizedBox(
                              height: 5,
                            ),
                            ContinueWithGoogleBotton(onTap: () {
                              onContionueWithGoogleTap(context);
                            }),
                            const SizedBox(
                              height: 15,
                            ),
                            GlobalTextButton(
                              text1: firstTimeHere,
                              text2: signUpText,
                              onTap: () {
                                onSignUpTap(context);
                              },
                            ),
                            const SizedBox(
                              height: 30,
                            )
                          ],
                        ),
                      ),
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

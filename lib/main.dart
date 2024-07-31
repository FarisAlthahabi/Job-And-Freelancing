import 'package:bloc/bloc.dart';
import 'package:empco/Core/Config/Theme/light_theme.dart';
import 'package:empco/Core/Config/bloc/Bloc_Observer.dart';
import 'package:empco/Core/Config/router/Router.dart';
import 'package:empco/Core/Config/Shared_Preferences.dart';
import 'package:empco/Features/Auth/View/Register/register_page.dart';
import 'package:empco/Features/Auth/View/Verify_Email/verify_email_page.dart';
import 'package:empco/Features/Roles/Company/navigation_bar/navigation_bar.dart';
import 'package:empco/Features/Roles/Freelancer/Navigation_Bar/navigation_bar.dart';
import 'package:empco/Features/Roles/Freelancer/Job_Details/View/job_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
         MaterialApp(
            theme: lightTheme,
            debugShowCheckedModeBanner: false,
            home: const CompanyNavigationBar() );
    //     MaterialApp.router(
    //   routerConfig: router,
    //   debugShowCheckedModeBanner: false,
    // );
  }
}

import 'package:bloc/bloc.dart';
import 'package:empco/Core/Config/Bloc_Observer.dart';
import 'package:empco/Core/Config/Router.dart';
import 'package:empco/Core/Config/Shared_Preferences.dart';
import 'package:empco/UI/Home_Page.dart';
import 'package:empco/UI/Show_Job_Details.dart';
import 'package:flutter/material.dart';

void main() async {
  
  setup();
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
         MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ShowJobDetails(),
        );
    //     MaterialApp.router(
    //   routerConfig: router,
    //   debugShowCheckedModeBanner: false,
    // );
  }
}

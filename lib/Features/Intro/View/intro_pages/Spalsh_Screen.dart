// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:empco/Core/Widgets/empcoIcon_and_empcoText.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      context.go('/Info');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(29, 91, 164, 0.91),
        body: Center(
          child: EmpcoIconAndEmpcoText(
            width: 200,
            hight: 170,
            fontsize: 33.05,
            scale: 1, color: Colors.white,
          ),
        ),
      ),
    );
  }
}

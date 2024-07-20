// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:empco/Core/Resources/Constants/Colors.dart';
import 'package:empco/Core/Resources/Constants/font_weights.dart';
import 'package:empco/Core/Resources/Constants/Texts.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      signUpText,
      style: TextStyle(color: black, fontSize: 20, fontWeight: weightlevel8),
      textAlign: TextAlign.center,
    );
  }
}

class ContinueWithGoogleText extends StatelessWidget {
  const ContinueWithGoogleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      continueWithGoogleText,
      style: TextStyle(color: black, fontSize: 12.21, fontWeight: weightlevel7),
      textAlign: TextAlign.center,
    );
  }
}



class SignUpInsideBottonText extends StatelessWidget {
  const SignUpInsideBottonText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      signUpText,
      style: TextStyle(color: white, fontSize: 17.09, fontWeight: weightlevel7),
      textAlign: TextAlign.center,
    );
  }
}

import 'package:empco/Core/Resources/Constants/Colors.dart';
import 'package:empco/Core/Resources/Constants/Font_Weights.dart';
import 'package:empco/Core/Resources/Constants/Texts.dart';
import 'package:flutter/material.dart';

class VerifyText1 extends StatelessWidget {
  const VerifyText1({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      verifyEmailText,
      style: TextStyle(color: black, fontSize: 15, fontWeight: weightlevel7),
      textAlign: TextAlign.center,
    );
  }
}

class VerifyText2 extends StatelessWidget {
  const VerifyText2({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
        text: verificationCodeIsSent,
        style: TextStyle(color: black, fontSize: 10, fontWeight: weightlevel5),
        children: [
          TextSpan(text: emailText, style: TextStyle(fontWeight: bold)),
          TextSpan(text: putCode)
        ]));
  }
}



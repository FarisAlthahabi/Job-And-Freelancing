import 'package:empco/Core/Resources/Constants/Colors.dart';
import 'package:empco/Core/Resources/Constants/Font_Weights.dart';
import 'package:empco/Core/Resources/Constants/Texts.dart';
import 'package:flutter/material.dart';

class Text1InForgetPass extends StatelessWidget {
  const Text1InForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      didForgetPasswordText,
      style: TextStyle(color: black, fontSize: 20, fontWeight: weightlevel8),
      textAlign: TextAlign.center,
    );
  }
}

class Text2InForgetPass extends StatelessWidget {
  const Text2InForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      noWorriesText,
      style: TextStyle(color: black, fontSize: 10, fontWeight: weightlevel7),
      textAlign: TextAlign.center,
    );
  }
}

class Text3InForgetPass extends StatelessWidget {
  const Text3InForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      enterEmail,
      style: TextStyle(color: black, fontSize: 13, fontWeight: weightlevel7),
      textAlign: TextAlign.center,
    );
  }
}

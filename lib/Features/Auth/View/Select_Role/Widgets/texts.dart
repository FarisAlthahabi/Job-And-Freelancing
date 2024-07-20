import 'package:empco/Core/Resources/Constants/Colors.dart';
import 'package:empco/Core/Resources/Constants/Font_Weights.dart';
import 'package:empco/Core/Resources/Constants/Texts.dart';
import 'package:flutter/material.dart';

class SelectRoleTextWidget extends StatelessWidget {
  const SelectRoleTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      selectRole,
      style: TextStyle(color: black, fontSize: 20, fontWeight: weightlevel8),
      textAlign: TextAlign.center,
    );
  }
}


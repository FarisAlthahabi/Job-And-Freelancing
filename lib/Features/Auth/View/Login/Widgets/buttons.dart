import 'package:empco/Core/Resources/Constants/Colors.dart';
import 'package:empco/Core/Resources/Constants/Font_Weights.dart';
import 'package:empco/Core/Resources/Constants/Texts.dart';
import 'package:flutter/material.dart';

class ForgetPasswordTextButton extends StatelessWidget {
  final double screenWidth;
  final VoidCallback onTap;
  const ForgetPasswordTextButton(
      {super.key, required this.screenWidth, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.89 * screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: onTap,
            child: Text(
              forgetPasswordText,
              style:
                  TextStyle(color: black, fontSize: 12.06, fontWeight: weightlevel8),
            ),
          ),
        ],
      ),
    );
  }
}

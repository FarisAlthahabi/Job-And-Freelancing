// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:empco/Core/Resources/Constants/font_weights.dart';
import 'package:flutter/material.dart';

import 'package:empco/Core/Resources/Constants/Texts.dart';

class IsWrongWidget extends StatelessWidget {
  final bool isWrongCode;
  const IsWrongWidget({
    super.key,
    required this.isWrongCode,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isWrongCode,
      child: Column(
        children: [
          Text(
            wrongCode,
            style:  TextStyle(
                color: const Color.fromRGBO(255, 9, 9, 1),
                fontSize: 10,
                fontWeight: weightlevel6),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

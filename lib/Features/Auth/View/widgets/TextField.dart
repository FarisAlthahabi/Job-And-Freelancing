// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  double textFieldWidth;
  double textFieldHeight;
  TextEditingController controller;
  Color textFieldColor;
  Icon textFieldPrefixIcon;
  Color textFieldPrefixIconColor;
   TextFieldWidget({
    super.key,
    required this.textFieldWidth,
    required this.textFieldHeight,
    required this.controller,
    required this.textFieldColor,
    required this.textFieldPrefixIcon,
    required this.textFieldPrefixIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: textFieldWidth,
      height: textFieldHeight,
      decoration: BoxDecoration(
        color: textFieldColor,
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: textFieldPrefixIcon,
          prefixIconColor: textFieldPrefixIconColor,
        ),
      ),
    );
  }
}

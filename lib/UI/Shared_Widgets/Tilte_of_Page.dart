// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TitleOfPage extends StatelessWidget {
  String text;
  TitleOfPage({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Color.fromRGBO(25, 69, 120, 1),
          fontSize: 20,
          fontWeight: FontWeight.w700),
      textAlign: TextAlign.center,
    );
  }
}

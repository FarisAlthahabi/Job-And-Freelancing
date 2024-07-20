import 'package:flutter/material.dart';

void showSnackBarMethod(BuildContext context, String text, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    action: SnackBarAction(
      label: 'close',
      onPressed: () {},
      textColor: Colors.black,
    ),
    duration: const Duration(seconds: 3),
    content: Center(child: Text(text)),
    backgroundColor: color,
    behavior: SnackBarBehavior.floating,
  ));
}

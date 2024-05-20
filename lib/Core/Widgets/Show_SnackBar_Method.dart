import 'package:flutter/material.dart';

showSnackBarMethod(BuildContext context,String text,Color color){
  ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                duration: Duration(seconds: 3),
                content: Center(child: Text(text)),
                backgroundColor: color,
                behavior: SnackBarBehavior.floating,
              ));
}
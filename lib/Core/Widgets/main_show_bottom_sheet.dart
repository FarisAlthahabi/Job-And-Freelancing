import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void mainShowBottomSheet(
  BuildContext context,
   {
    Duration? duration,
    Color? backgroundColor,
  required Widget widget,
}) {
  showMaterialModalBottomSheet(
    backgroundColor: backgroundColor,
    context: context,
    shape: const OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(35),
        topRight: Radius.circular(35),
      ),
    ),
    builder: (context) => widget,
  );
}
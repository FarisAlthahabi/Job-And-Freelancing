// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class EmpcoIcon extends StatelessWidget {
  double paddingTop;
  double paddingLeft;
  double iconHeight;
  double iconWidth;
  EmpcoIcon({
    super.key,
    required this.paddingTop,
    required this.paddingLeft,
    required this.iconHeight,
    required this.iconWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop, left: paddingLeft),
      child: SvgPicture.asset(
        'lib/Core/Resources/assets/SVG/empcoIcon.svg',
        semanticsLabel: 'My SVG Image',
        height: iconHeight,
        width: iconWidth,
      ),
    );
  }
}

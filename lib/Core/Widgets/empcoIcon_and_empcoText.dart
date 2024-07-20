// ignore_for_file: file_names

import 'package:empco/Core/Resources/Constants/Font_Weights.dart';
import 'package:empco/Core/Resources/Constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class EmpcoIconAndEmpcoText extends StatelessWidget {
  final Color color;
  final double width;
  final double hight;
  final double fontsize;
  final double scale;
  const EmpcoIconAndEmpcoText({
    super.key,
    required this.color,
    required this.width,
    required this.hight,
    required this.fontsize,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    double width2;
    double hight2;
    if (width == 90 && hight == 120) {
      width2 = 50;
      hight2 = 50;
    } else {
      width2 = 70;
      hight2 = 70;
    }

    return SizedBox(
      width: width,
      height: hight,
      child: Center(
        child: Column(
          children: [
            SvgPicture.asset(
              empcoIcon,
              height: hight2,
              width: width2,
            ),
            Text(
              'empco',
              style: TextStyle(
                color: color,
                fontSize: fontsize,
                fontStyle: FontStyle.normal,
                fontWeight: weightlevel5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
class EmpcoIcon extends StatelessWidget {
  final double paddingTop;
  final double paddingLeft;
  final double iconHeight;
  final double iconWidth;
  const EmpcoIcon({
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
        empcoIcon,
        height: iconHeight,
        width: iconWidth,
      ),
    );
  }
}

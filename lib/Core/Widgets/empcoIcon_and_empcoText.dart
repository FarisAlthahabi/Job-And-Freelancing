// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class EmpcoIconAndEmpcoText extends StatelessWidget {
  Color color;
  double width;
  double hight;
  double fontsize;
  double scale;
  EmpcoIconAndEmpcoText({
    Key? key,
    required this.color,
    required this.width,
    required this.hight,
    required this.fontsize,
    required this.scale,
  }) : super(key: key);

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
            // Image.asset('lib/Core/Resources/assets/Group 1.png',scale: scale,),
            SvgPicture.asset(
              'lib/Core/Resources/assets/SVG/empcoIcon.svg',
              semanticsLabel: 'My SVG Image',
              height: hight2,
              width: width2,
            ),
            Text(
              'empco',
              style: TextStyle(
                color: color,
                fontSize: fontsize,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}

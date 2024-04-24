import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class EmpcoIconAndEmpcoText extends StatelessWidget {
  double width;
  double hight;
  double fontsize;
  double scale;
   EmpcoIconAndEmpcoText({
    Key? key,
    required this.width,
    required this.hight,
    required this.fontsize,
    required this.scale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      child: Center(
        child: Column(
          children: [
           // Image.asset('lib/Core/Resources/assets/Group 1.png',scale: scale,),
           SvgPicture.asset( 
           'lib/Core/Resources/assets/SVG/empcoIcon.svg', 
           semanticsLabel: 'My SVG Image', 
          //  height: 100, 
          //  width: 70, 
         ),
            Text(
              'empco',
              style: TextStyle(
                color: Colors.white,
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

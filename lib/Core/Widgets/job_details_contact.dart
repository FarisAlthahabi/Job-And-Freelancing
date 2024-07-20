import 'package:empco/Core/Resources/Constants/colors.dart';
import 'package:empco/Core/Resources/Constants/font_weights.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobContactDetails extends StatelessWidget {
  const JobContactDetails({
    super.key,
    this.width,
    this.title,
    this.fontSize,
    this.iconSize,
  });

  final double? width;
  final String? title;
  final double? fontSize;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width ?? 70,
          height: 16,
          decoration:
              const BoxDecoration(color: Color.fromRGBO(15, 50, 91, 0.07)),
          child: Center(
            child: Text(
              title ?? 'Contact',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: black,
                    fontSize: fontSize ?? 12.35,
                    fontWeight: weightlevel7),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 180,
          child: Row(
            children: [
              Icon(
                Icons.mail_outline_outlined,
                size: iconSize,
              ),
              const SizedBox(width: 5,),
              Text(
                'uzonehr@gmail.com',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: black,
                      fontSize: fontSize == null ? 12.35 : fontSize! - 2,
                      fontWeight: weightlevel7),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 150,
          child: Row(
            children: [
              Icon(
                Icons.call_outlined,
                size: iconSize,
              ),
                const SizedBox(width: 5,),
              Text(
                '+9639123456789',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: black,
                      fontSize: fontSize == null ? 12.35 : fontSize! - 2,
                      fontWeight: weightlevel7),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

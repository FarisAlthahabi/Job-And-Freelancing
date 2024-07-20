import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobPostDate extends StatelessWidget {
  final String jobPostDate;
  final double screenWidth;
  const JobPostDate(
      {super.key, required this.jobPostDate, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.91 * screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            jobPostDate,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Color.fromRGBO(110, 109, 109, 1),
                  fontSize: 9.64,
                  fontWeight: FontWeight.w700),
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class Text1 extends StatelessWidget {
  const Text1({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Jobs for you',
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 20.64,
            fontWeight: FontWeight.w700),
      ),
      textAlign: TextAlign.center,
    );
  }
}

class Text2 extends StatelessWidget {
  const Text2({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Based on your Career',
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
            color: Color.fromRGBO(110, 109, 109, 1),
            fontSize: 9.64,
            fontWeight: FontWeight.w700),
      ),
      textAlign: TextAlign.center,
    );
  }
}

import 'package:empco/Core/Resources/Constants/Colors.dart';
import 'package:empco/Core/Resources/Constants/Font_Weights.dart';
import 'package:empco/Core/Widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class JobMainInfo extends StatelessWidget {
  final double screenWidth;
  final VoidCallback onExpandJopTap;
  final VoidCallback onFavoriteTap;
  final VoidCallback onMessageTap;
  final VoidCallback onApplyTap;
  const JobMainInfo(
      {super.key,
      required this.screenWidth,
      required this.onExpandJopTap,
      required this.onFavoriteTap,
      required this.onMessageTap,
      required this.onApplyTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.favorite,
        size: 0.14 * screenWidth,
      ),
      title: Container(
        height: 100,
        width: 0.73 * screenWidth,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(248, 248, 248, 1),
          borderRadius: BorderRadius.circular(11.42),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 0.63 * screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Ui Ux Designer',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: blue,
                            fontSize: 14.64,
                            fontWeight: weightlevel7,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    InkWell(
                      onTap: onExpandJopTap,
                      child: SvgPicture.asset(
                        'lib/Core/Resources/assets/SVG/expand.svg',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 0.63 * screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 80,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset(
                            'lib/Core/Resources/assets/SVG/company.svg',
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Uzone',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: const Color.fromRGBO(15, 50, 91, 1),
                                  fontSize: 8.64,
                                  fontWeight: weightlevel7),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: InkWell(
                        onTap: onFavoriteTap,
                        child: SvgPicture.asset(
                          'lib/Core/Resources/assets/SVG/favorite-list.svg',
                          semanticsLabel: 'My SVG Image',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 0.63 * screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(
                            Icons.location_on,
                            size: 15,
                            color: Color.fromRGBO(155, 155, 155, 1),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Damascus,Syria',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: const Color.fromRGBO(155, 155, 155, 1),
                                  fontSize: 4.64,
                                  fontWeight: weightlevel7),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset(
                            'lib/Core/Resources/assets/SVG/salary.svg',
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '1800,000 SP',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: const Color.fromRGBO(155, 155, 155, 1),
                                  fontSize: 5.64,
                                  fontWeight: weightlevel7),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 27),
                      child: InkWell(
                        onTap: onMessageTap,
                        child: SvgPicture.asset(
                          'lib/Core/Resources/assets/SVG/chat.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 0.63 * screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 110,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          SvgPicture.asset(
                            'lib/Core/Resources/assets/SVG/work-site.svg',
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'On-Site',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color:
                                        const Color.fromRGBO(155, 155, 155, 1),
                                    fontSize: 4.64,
                                    fontWeight: weightlevel7)),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            width: 35,
                            height: 9,
                            child: Center(
                              child: Text(
                                'Full time',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color:
                                        const Color.fromRGBO(155, 155, 155, 1),
                                    fontSize: 4.64,
                                    fontWeight: weightlevel7,
                                  ),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        // Apply Button
                        padding: const EdgeInsets.only(right: 5),
                        child: AuthMainButton(
                            width: 57.85,
                            height: 18.02,
                            text: 'Apply',
                            blurRadius: 1.36,
                            yAxisOffset: 1.36,
                            shadowColor: boxShadowColor2,
                            fontSize: 6.81,
                            onTap: onApplyTap)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

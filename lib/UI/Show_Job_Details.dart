import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowJobDetails extends StatelessWidget {
  const ShowJobDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(
        toolbarHeight: 30,
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              'Based Career',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Color.fromRGBO(29, 91, 164, 1),
                    fontSize: 20.64,
                    fontWeight: FontWeight.w700),
              ),
              textAlign: TextAlign.center,
            ),
            trailing: SvgPicture.asset(
              'lib/Core/Resources/assets/SVG/favorite-list.svg',
              width: 19.5,
              height: 24.59,
              semanticsLabel: 'My SVG Image',
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                width: 310,
                height: 225,
                decoration: BoxDecoration(
                    //  color: Colors.amber,
                    borderRadius: BorderRadius.circular(11.42)),
                child: Stack(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11.42),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                                blurRadius: 4,
                                color: Color.fromRGBO(0, 0, 0, 0.25))
                          ],
                          color: Colors.black87),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.favorite,
                              size: 50,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'lib/Core/Resources/assets/SVG/company.svg',
                                      semanticsLabel: 'My SVG Image',
                                    ),
                                    Text(
                                      'Company',
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Color.fromRGBO(236, 227, 227, 1),
                                            fontSize: 11.35,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Uzone',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.62,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'Technology and Software',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 6.35,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 15,
                              color: Color.fromRGBO(236, 227, 227, 1),
                            ),
                            Text.rich(
                              textAlign: TextAlign.center,
                              TextSpan(
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(236, 227, 227, 1),
                                        fontSize: 9.35,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  text: 'Location',
                                  children: [
                                    TextSpan(
                                        text: ':',
                                        style: TextStyle(fontSize: 9.35)),
                                  ]),
                            ),
                            Text(
                              'Damascus, Syria',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 9.35,
                                    fontWeight: FontWeight.w700),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 15,
                              color: Color.fromRGBO(236, 227, 227, 1),
                            ),
                            Text.rich(
                              textAlign: TextAlign.center,
                              TextSpan(
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(236, 227, 227, 1),
                                        fontSize: 9.35,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  text: 'Work Nature',
                                  children: [
                                    TextSpan(
                                        text: ':',
                                        style: TextStyle(fontSize: 9.35)),
                                  ]),
                            ),
                            Text(
                              'On-Site',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 9.35,
                                    fontWeight: FontWeight.w700),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 15,
                              color: Color.fromRGBO(236, 227, 227, 1),
                            ),
                            Text.rich(
                              textAlign: TextAlign.center,
                              TextSpan(
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(236, 227, 227, 1),
                                        fontSize: 9.35,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  text: 'Salary',
                                  children: [
                                    TextSpan(
                                        text: ':',
                                        style: TextStyle(fontSize: 9.35)),
                                  ]),
                            ),
                            Text(
                              '2,000,000 SP',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 9.35,
                                    fontWeight: FontWeight.w700),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 15,
                              color: Color.fromRGBO(236, 227, 227, 1),
                            ),
                            Text.rich(
                              textAlign: TextAlign.center,
                              TextSpan(
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Color.fromRGBO(236, 227, 227, 1),
                                        fontSize: 9.35,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  text: 'Type',
                                  children: [
                                    TextSpan(
                                        text: ':',
                                        style: TextStyle(fontSize: 9.35)),
                                  ]),
                            ),
                            Text(
                              'Full Time',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 9.35,
                                    fontWeight: FontWeight.w700),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 90,
                                height: 23,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        color: Color.fromRGBO(0, 0, 0, 0.25))
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(111.25),
                                ),
                                child: Center(
                                  child: Text(
                                    'Message',
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 8.73,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 90,
                                height: 23,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        color: Color.fromRGBO(0, 0, 0, 0.25))
                                  ],
                                  color: Color.fromRGBO(29, 91, 164, 1),
                                  borderRadius: BorderRadius.circular(111.25),
                                ),
                                child: Center(
                                  child: Text(
                                    'Apply',
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 8.73,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}

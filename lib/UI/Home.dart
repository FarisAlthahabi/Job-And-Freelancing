import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    var screenSize = deviceData.size;
    print(screenSize);
    print((screenSize.width * 205) / 353);
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Container(
            //width = 205,
            width: (screenSize.width * 205) / 353,
            height: 25,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(222, 233, 246, 1),
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: const Icon(Icons.search_rounded),
                  prefixIconColor: const Color.fromRGBO(140, 135, 135, 1),
                  hintText: 'Find a job',
                  hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          height: 2.75,
                          color: Color.fromRGBO(140, 135, 135, 1),
                          fontSize: 8.91,
                          fontWeight: FontWeight.w700))),
            ),
          ),
          actions: const [
            SizedBox(
              width: 25,
            ),
            Badge(
              child: Icon(
                Icons.notifications_none_outlined,
                size: 30,
              ),
            ),
            SizedBox(
              width: 25,
            ),
          ],
        ),
        body: Column(
          children: [
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  children: [
                    Text(
                      'Jobs for you',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 20.64,
                            fontWeight: FontWeight.w700),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Based on your Career',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(110, 109, 109, 1),
                            fontSize: 9.64,
                            fontWeight: FontWeight.w700),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'lib/Core/Resources/assets/SVG/filter.svg',
                  semanticsLabel: 'My SVG Image',
                ),
              ),
            ),
            Expanded(
                child: SizedBox(
              width: double.maxFinite,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              //width: 260,
                              width: screenSize.width - 93,
                            ),
                            Text(
                              'Based Career',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color.fromRGBO(110, 109, 109, 1),
                                    fontSize: 9.64,
                                    fontWeight: FontWeight.w700),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.favorite,
                            size: 50,
                          ),
                          title: Container(
                            height: 100,
                            //  width: 270,
                            width: (screenSize.width * 270) / 353,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(248, 248, 248, 1),
                              borderRadius: BorderRadius.circular(11.42),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Ui Ux Designer',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            color:
                                                Color.fromRGBO(26, 82, 147, 1),
                                            fontSize: 14.64,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        // width: 75,
                                        width: screenSize.width - 278,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: SvgPicture.asset(
                                          'lib/Core/Resources/assets/SVG/expand.svg',
                                          semanticsLabel: 'My SVG Image',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 15,
                                      ),
                                      SvgPicture.asset(
                                        'lib/Core/Resources/assets/SVG/company.svg',
                                        semanticsLabel: 'My SVG Image',
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'Uzone',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color:
                                                  Color.fromRGBO(15, 50, 91, 1),
                                              fontSize: 8.64,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        width: screenSize.width - 243,
                                        // width: 110,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: SvgPicture.asset(
                                          'lib/Core/Resources/assets/SVG/favorite-list.svg',
                                          semanticsLabel: 'My SVG Image',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 15,
                                      ),
                                      const Icon(
                                        Icons.location_on,
                                        size: 15,
                                        color: Color.fromRGBO(155, 155, 155, 1),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Ui Ux Designer',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color: Color.fromRGBO(
                                                  155, 155, 155, 1),
                                              fontSize: 4.64,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SvgPicture.asset(
                                        'lib/Core/Resources/assets/SVG/salary.svg',
                                        semanticsLabel: 'My SVG Image',
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Ui Ux Designer',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color: Color.fromRGBO(
                                                  155, 155, 155, 1),
                                              fontSize: 5.64,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        width: screenSize.width - 325,
                                        //width: 28,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: SvgPicture.asset(
                                          'lib/Core/Resources/assets/SVG/chat.svg',
                                          semanticsLabel: 'My SVG Image',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 15,
                                      ),
                                      SvgPicture.asset(
                                        'lib/Core/Resources/assets/SVG/work-site.svg',
                                        semanticsLabel: 'My SVG Image',
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Ui Designer',
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                color: Color.fromRGBO(
                                                    155, 155, 155, 1),
                                                fontSize: 4.64,
                                                fontWeight: FontWeight.w700)),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        width: 35,
                                        height: 9,
                                        decoration: BoxDecoration(
                                            // color: Color.fromRGBO(155, 155, 155, 1)
                                            ),
                                        child: Center(
                                          child: Text(
                                            'Ux Designer',
                                            style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                color: Color.fromRGBO(
                                                    155, 155, 155, 1),
                                                fontSize: 4.64,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        //width: 50,
                                        width: screenSize.width - 303,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          width: 57.85,
                                          height: 18.02,
                                          decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                  offset: Offset(0, 1.36),
                                                  spreadRadius: 0,
                                                  blurRadius: 1.36,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.25))
                                            ],
                                            color:
                                                Color.fromRGBO(29, 91, 164, 1),
                                            borderRadius:
                                                BorderRadius.circular(111.25),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Apply',
                                              style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 6.81,
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
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }
}

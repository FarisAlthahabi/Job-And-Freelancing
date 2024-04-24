import 'package:empco/UI/Shared_Widgets/empcoIcon_and_empcoText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

String Text1 = '';
String Text2 = '';
String Text3 = '';
late Color color1;
late Color color2;
late Color color3;
late Color color4;

class InfoScreens extends StatelessWidget {
  const InfoScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            if (index == 0) {
              Text1 = 'for Freelancers';
              color1 = Color.fromRGBO(29, 91, 164, 1);
              Text2 =
                  '"Unlock a world of\n opportunities to showcase\n your skills ';
              Text3 = 'connecting with businesses seeking your talents';
              color2 = Color.fromRGBO(29, 91, 164, 1);
              color3 = Color.fromRGBO(217, 217, 217, 1);
              color4 = Color.fromRGBO(217, 217, 217, 1);
            }
            if (index == 1) {
              Text1 = 'for Companies';
              color1 = Color.fromRGBO(227, 143, 45, 1);
              Text2 =
                  'Post job opportunities\n effortlessly and connect\n with qualified Freelancers';
              Text3 = 'Find top talent for your projects ';
              color3 = Color.fromRGBO(29, 91, 164, 1);
              color2 = Color.fromRGBO(217, 217, 217, 1);
              color4 = Color.fromRGBO(217, 217, 217, 1);
            }
            if (index == 2) {
              Text1 = 'For Customers';
              color1 = Color.fromRGBO(221, 90, 90, 1);
              Text2 =
                  '"Access a diverse pool of\n talented freelancers ready to\n tackle any project"';
              Text3 = 'Search for Freelancers to do services for you';
              color4 = Color.fromRGBO(29, 91, 164, 1);
              color3 = Color.fromRGBO(217, 217, 217, 1);
              color2 = Color.fromRGBO(217, 217, 217, 1);
            }
            return Stack(
              children: [
                SvgPicture.asset( 
           'lib/Core/Resources/assets/SVG/IntroImage${index + 1}.svg', 
           semanticsLabel: 'My SVG Image',  
         ),
                // Image.asset(
                //   'lib/Core/Resources/assets/introimage${index + 1}.png',
                //   fit: BoxFit.cover,width: double.maxFinite,height: double.maxFinite,alignment: Alignment.center,
                // ),
                Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: 
                    EmpcoIconAndEmpcoText(
                        width: 90, hight: 120, fontsize: 23.52, scale: 1.5)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 330,
                    ),
                    SvgPicture.asset( 
           'lib/Core/Resources/assets/SVG/IconIntro${index + 1}.svg', 
           semanticsLabel: 'My SVG Image', 
         ),
                    // Image.asset(
                    //     'lib/Core/Resources/assets/iconintro${index + 1}.png'),
                    Container(
                      width: 105.92,
                      height: 24.52,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          Text1,
                          style: TextStyle(
                              color: color1,
                              fontSize: 12.38,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Text(
                      Text2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      Text3,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
                    Center(
                      child: Container(
                       // color: Colors.amber,
                        width: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                               // left: 130
                                ),
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: color2),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: color3),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: color4),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.go('/SelectRole');
                      },
                      child: Container(
                        width: 234.8,
                        height: 53,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(29, 91, 164, 1),
                            borderRadius: BorderRadius.circular(327.16),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  color: Color.fromRGBO(0, 0, 0, 0.5))
                            ]),
                        child: Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.09,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.go('/Login');
                      },
                      child: Text(
                        'Already have an account? log In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w800),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

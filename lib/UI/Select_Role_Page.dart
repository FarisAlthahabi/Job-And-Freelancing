import 'package:empco/Core/Config/Shared_Preferences.dart';
import 'package:empco/UI/Shared_Widgets/Tilte_of_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SelectRolePage extends StatelessWidget {
  const SelectRolePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child:
                  // Image.asset('lib/Core/Resources/assets/Group 1.png',
                  //     scale: 1.8),
                  SvgPicture.asset(
                'lib/Core/Resources/assets/SVG/empcoIcon.svg',
                semanticsLabel: 'My SVG Image',
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  TitleOfPage(text: 'Let’s Get Started!'),
                  SvgPicture.asset(
                    'lib/Core/Resources/assets/SVG/ChooseRoleImage.svg',
                    semanticsLabel: 'My SVG Image',
                  ),
                  // Image.asset('lib/Core/Resources/assets/SVG/ChooseRoleImage.svg'),
                  Text(
                    'Select Your Role to Continue',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 20,
                        //   height: 30,
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: 250,
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                onTap: () async {
                                  if(index==0){
                                    config
                                      .get<SharedPreferences>()
                                      .setString('role', 'freelancer');
                                  }
                                  else if(index==1){
                                    config
                                      .get<SharedPreferences>()
                                      .setString('role', 'owner');
                                  }
                                  else{
                                    config
                                      .get<SharedPreferences>()
                                      .setString('role', 'seeker');
                                  }
                                  context.go('/Signup');
                                },
                                child: Container(
                                  width: 323.21,
                                  height: 49.13,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: index == 0
                                            ? Color.fromRGBO(29, 91, 164, 1)
                                            : index == 1
                                                ? Color.fromRGBO(
                                                    227, 143, 45, 1)
                                                : Color.fromRGBO(
                                                    221, 90, 90, 1),
                                        width: 1.3,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(303.3),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0, 3.71),
                                            spreadRadius: 0,
                                            blurRadius: 3.71,
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.25))
                                      ]),
                                  child: Center(
                                    child: Text(
                                      index == 0
                                          ? 'Freelancers'
                                          : index == 1
                                              ? 'Company'
                                              : 'Customer',
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontSize: 19.73,
                                          //   height: 30,
                                          fontWeight: FontWeight.w700),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:empco/Core/Config/Shared_Preferences.dart';
import 'package:empco/Core/Widgets/Tilte_of_Page.dart';
import 'package:empco/Features/Auth/View/widgets/Empco_Icon.dart';
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
            EmpcoIcon(paddingTop: 10, paddingLeft: 10, iconHeight: 50, iconWidth: 50,),
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  TitleOfPage(text: 'Let’s Get Started!'),
                  SvgPicture.asset(
                    'lib/Core/Resources/assets/SVG/ChooseRoleImage.svg',
                    semanticsLabel: 'My SVG Image',
                  ),
                  // Image.asset('lib/Core/Resources/assets/SVG/ChooseRoleImage.svg'),
                  const Text(
                    'Select Your Role to Continue',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 20,
                        //   height: 30,
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              const SizedBox(
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
                                            ? const Color.fromRGBO(29, 91, 164, 1)
                                            : index == 1
                                                ? const Color.fromRGBO(
                                                    227, 143, 45, 1)
                                                : const Color.fromRGBO(
                                                    221, 90, 90, 1),
                                        width: 1.3,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(303.3),
                                      boxShadow: const [
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
                                      style: const TextStyle(
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

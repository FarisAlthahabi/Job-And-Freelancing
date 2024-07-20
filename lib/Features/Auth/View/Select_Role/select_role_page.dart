import 'package:empco/Core/Config/router/Router.dart';
import 'package:empco/Core/Config/Shared_Preferences.dart';
import 'package:empco/Core/Resources/Constants/Texts.dart';
import 'package:empco/Core/Resources/Constants/assets.dart';
import 'package:empco/Core/Widgets/empcoIcon_and_empcoText.dart';
import 'package:empco/Core/Widgets/text_widgets.dart';
import 'package:empco/Features/Auth/View/Select_Role/Widgets/buttons.dart';
import 'package:empco/Features/Auth/View/Select_Role/Widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SelectRoleViewCallBacks {
  onRoleSelected(int index, BuildContext context);
}

class SelectRolePage extends StatelessWidget
    implements SelectRoleViewCallBacks {
  const SelectRolePage({super.key});

  @override
  onRoleSelected(int index, BuildContext context) {
    config.get<SharedPreferences>().setString(role, userRole[index]);
    context.go('$mainRoute$introRoute/$signUpRoute');
  }

  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    var screenSize = deviceData.size;
    double screenWidth = screenSize.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const EmpcoIcon(
              paddingTop: 10,
              paddingLeft: 10,
              iconHeight: 50,
              iconWidth: 50,
            ),
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  TitleOfPage(text: selectRolePageTitle),
                  SvgPicture.asset(
                    chooseRoleImage,
                  ),
                 const SelectRoleTextWidget(),
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
                              SelectRoleButton(
                                screenWidth: screenWidth,
                                index: index,
                                onTap: () {
                                  onRoleSelected(index, context);
                                },
                              )
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

import 'package:empco/Core/Resources/Constants/Colors.dart';
import 'package:empco/Core/Resources/Constants/assets.dart';

import 'package:empco/Core/Resources/Constants/texts.dart';
import 'package:empco/Core/Widgets/empco_app_bar.dart';
import 'package:empco/Core/Widgets/job_details_contact.dart';
import 'package:empco/Features/Roles/Freelancer/profile/edit_profile.dart';
import 'package:empco/Features/Roles/Freelancer/profile/widgets/icon_and_text.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: const EmpcoAppBar(
              automaticallyImplyLeading: true,
              title: Text(
                profile,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff1D5BA4)),
              ),
            ),
            body: Stack(
              children: [
                const Image(
                  image: AssetImage(backgroungProfile),
                  fit: BoxFit.cover,
                  width: 1200,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 75, left: 25),
                  child: Container(
                    // child: Image(
                    //   image: AssetImage(),
                    // ),
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 350, top: 140),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EditProfileView(title: 'Edit Profile',),
                            ));
                      },
                      icon: const Icon(Icons.edit)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 180,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Deware Company',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '200 ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            'followers',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      IconWithText(
                        icon: badgeIcon,
                        text: 'Software Development',
                        sizetext: 15,
                        sizeicon: 30,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      IconWithText(
                        icon: loctionIcon,
                        text: ' Damascus, Syria',
                        sizetext: 15,
                        sizeicon: 25,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      IconWithText(
                        icon: connectionIcon,
                        text: ' 2019',
                        sizetext: 15,
                        sizeicon: 25,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      IconWithText(
                        icon: ceoIcon,
                        text: ' Elon Task',
                        sizetext: 15,
                        sizeicon: 25,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      IconWithText(
                        icon: aboutIcon,
                        text: 'Overview',
                        sizetext: 20,
                        sizeicon: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 10, left: 8),
                        child: Text(
                            'A great victory is the result of a great work, Deware provides  full software Services based on your needs, with its great team and superior stuff'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      IconWithText(
                        icon: workIcon,
                        text: 'Projects',
                        sizetext: 20,
                        sizeicon: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 10),
                        child: Text(
                            'website for DDS company  Mobile application for PDA company  Landing page for Travello company'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 190, top: 30),
                        child: JobContactDetails(
                          fontSize: 15,
                          title: 'Contact info',
                          width: 100,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}

import 'package:empco/Core/Resources/Constants/Colors.dart';
import 'package:empco/Core/Resources/Constants/assets.dart';

import 'package:empco/Core/Resources/Constants/texts.dart';
import 'package:empco/Core/Widgets/empco_app_bar.dart';
import 'package:empco/Core/Widgets/job_details_contact.dart';
import 'package:empco/Features/Roles/Freelancer/profile/edit_profile.dart';
import 'package:empco/Features/Roles/Freelancer/profile/widgets/icon_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationRejected extends StatelessWidget {
  const VerificationRejected({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const EmpcoAppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Account Verfication',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff1D5BA4)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              'Rejected',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Color(0xff9F2828),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                textAlign: TextAlign.left,
                'Your request  was approved by the admin, and You are able to use all the features of this application!',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: black, fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SvgPicture.asset(regectedImage),
            SizedBox(
              height: 40,
            ),
            MaterialButton(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 8),
              child: Text(
                'Request again',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: black, fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              onPressed: () {},
              color: Color(0xFFF8F8F8),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.black,
                      width: 0.75,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30)),
            ),
          ],
        ),
      ),
    ));
  }
}

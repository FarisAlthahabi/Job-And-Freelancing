import 'package:empco/Core/Resources/Constants/colors.dart';
import 'package:empco/Core/Resources/Constants/font_weights.dart';
import 'package:empco/Features/Roles/common_pages/empco_job_details/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class JobDetailsDescription extends StatelessWidget {
  const JobDetailsDescription({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 99,
          height: 16,
          decoration:
              const BoxDecoration(color: Color.fromRGBO(15, 50, 91, 0.07)),
          child: Center(
            child: Text(
              'Description',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: black, fontSize: 12.35, fontWeight: weightlevel7),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: SizedBox(
           // height: 200,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true ,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 5,
                );
              },
              itemCount: jobDetails.length,
              itemBuilder: (context, index) {
                return JobDescriptionText(
                  text: jobDetails[index],
                  fontWeight:
                      index == 2 || index == 6 ? weightlevel7 : weightlevel4,
                );
              },
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

List<String> jobDetails = [
  '1 . We,re seeking a passionate UI/UX Designer to help shape the user experience of our products, leveraging cutting-edge design principles and technologies.',
  '2 . Be at the forefront of innovation as a UI/UX Designer at our company, collaborating with cross-functional teams to translate user needs into engaging and impactful design solutions.',
  'Skills Required:',
  '. Bachelor,s or Master,s degree in Human-Computer Interaction, Psychology, Design, or a related field.',
  '. 2-3 years of of experience in User experience, User interface design',
  '. Excellent communication skills, including the ability to present research findings to diverse stakeholders.',
  'Responsibilities:',
  '. Conduct in-depth digital user research to gather insights that inform product design and development decisions.',
  '. Utilize a variety of research methods, including usability testing, interviews, surveys, and analytics, to understand user behavior and preferences.'
];


import 'package:empco/Features/Roles/common_pages/empco_job_details/empco_job_details.dart';
import 'package:flutter/material.dart';

abstract class JobDetailsCallBacks {
  onAddToFavoriteTap();

  onMessageTap();

  onApplyTap();
}


class FreelancerJobDetailsView extends StatelessWidget implements JobDetailsCallBacks  {
  const FreelancerJobDetailsView({super.key});

   @override
  onAddToFavoriteTap() {}

  @override
  onApplyTap() {}

  @override
  onMessageTap() {}

  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    var screenSize = deviceData.size;
    double screenWidth = screenSize.width;
    return JobDetailsView(
      onAddToFavoriteTap: onAddToFavoriteTap,
      onApplyTap: onApplyTap,
      onMessageTap: onMessageTap,
      screenWidth: screenWidth,
    );
  }
}

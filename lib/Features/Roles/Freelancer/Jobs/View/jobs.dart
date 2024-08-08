import 'package:empco/Features/Roles/Freelancer/Job_Details/View/job_details.dart';
import 'package:empco/Features/Roles/Freelancer/Jobs/View/Widgets/widgets.dart';
import 'package:flutter/material.dart';

abstract class JobsCallBacks {
  void onNotificationTap();

  void onExpandJopTap(BuildContext context);

  void onFavoriteTap();

  void onMessageTap();

  void onApplyTap();

  void onFilterTap();

  void onSearchChaged(String input);

  void onSearchSubmitted(String input);
}

late TextEditingController searchJobController;
bool haveNewNotification = true;

class JobsPage extends StatefulWidget {
  const JobsPage({super.key});

  @override
  State<JobsPage> createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> implements JobsCallBacks {
  @override
  void initState() {
    searchJobController = TextEditingController();
    super.initState();
  }

  @override
  onApplyTap() {}

  @override
  onExpandJopTap(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const FreelancerJobDetailsView()));
    //context.go('$mainRoute$introRoute/$jobDetailsRoute');
  }

  @override
  onFavoriteTap() {}

  @override
  onFilterTap() {}

  @override
  onMessageTap() {}

  @override
  onNotificationTap() {
    haveNewNotification = !haveNewNotification;
  }

   @override
  void onSearchChaged(String input) {
  }
  
  @override
  void onSearchSubmitted(String input) {
  }

  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    var screenSize = deviceData.size;
    double screenWidth = screenSize.width;

    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: SearchTextField(
            onChanged: onSearchChaged,
            onSubmitted: onSearchSubmitted,
            searchJobController: searchJobController,
            screenWidth: screenWidth,
          ), // Search TextField
          actions: [
            const SizedBox(
              width: 25,
            ),
            NotificationIcon(
              //   Notification Icon Button
              haveNewNotification: haveNewNotification,
              onTap: () {
                setState(() {
                  onNotificationTap();
                });
              },
            ),
            const SizedBox(
              width: 25,
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              width: 0.76 * screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text1(), // contains : Jobs For You
                      Text2(), // contains : based on your career
                    ],
                  ),
                  FilterIconButton(
                    // Filter Button
                    onTap: () {
                      onFilterTap();
                    },
                  )
                ],
              ),
            ),
            Expanded(
                child: SizedBox(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        JobPostDate(
                          jobPostDate: '5 hours ago',
                          screenWidth: screenWidth,
                        ),
                        JobMainInfo(
                          screenWidth: screenWidth,
                          onApplyTap: () {
                            onApplyTap();
                          },
                          onExpandJopTap: () {
                            onExpandJopTap(context);
                          },
                          onFavoriteTap: () {
                            onFavoriteTap();
                          },
                          onMessageTap: () {
                            onMessageTap();
                          },
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

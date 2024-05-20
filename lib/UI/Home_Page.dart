import 'package:empco/UI/Chat_Page.dart';
import 'package:empco/UI/Home.dart';
import 'package:empco/UI/Show_Jobs_Page.dart';
import 'package:empco/UI/Show_Services_Page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Pages[currentPageIndex],
        bottomNavigationBar: NavigationBar(
         height: 50,
          selectedIndex: currentPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.home_outlined,
                  color: Color.fromRGBO(29, 29, 29, 1),
                ),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.shopping_bag_outlined,
                    color: Color.fromRGBO(29, 29, 29, 1)),
                label: 'jobs'),
            NavigationDestination(
                icon: Icon(Icons.messenger_outline,
                    color: Color.fromRGBO(29, 29, 29, 1)),
                label: 'Messages'),
            NavigationDestination(
                icon: Icon(Icons.computer, color: Color.fromRGBO(29, 29, 29, 1)),
                label: 'Services')
          ],
        ),
      ),
    );
  }
}
// ignore: non_constant_identifier_names
List<Widget>Pages = [
  const Home(),
  const ShowJobsPage(),
  const ChatPage(),
  const ShowServicesPage()
];

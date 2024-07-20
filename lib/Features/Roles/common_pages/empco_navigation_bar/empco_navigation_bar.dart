import 'package:flutter/material.dart';

class EmpcoNavigationBar extends StatefulWidget {
  const EmpcoNavigationBar({super.key, required this.pages});

  final List<Widget> pages;

  @override
  State<EmpcoNavigationBar> createState() => _EmpcoNavigationBarState();
}

class _EmpcoNavigationBarState extends State<EmpcoNavigationBar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: widget.pages[currentPageIndex],
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.white,
          indicatorColor: const Color.fromRGBO(237, 245, 255, 1),
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
                icon:
                    Icon(Icons.computer, color: Color.fromRGBO(29, 29, 29, 1)),
                label: 'Services')
          ],
        ),
      ),
    );
  }
}

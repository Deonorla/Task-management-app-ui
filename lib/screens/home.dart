import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:task_management/screens/homeScreen.dart';
import 'package:task_management/screens/widgets/ui_contants.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  List<Widget> pages = const [
    HomeScreen(),
    Text("View"),
    Text("Add New Task"),
    Text("Add Comments"),
    Text("Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    final appbar = Uiconstants.appbar();
    return Scaffold(
        appBar: appbar,
        body: pages[_currentIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: _currentIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(icon: Icon(CupertinoIcons.home), label: ""),
            NavigationDestination(
                icon: Icon(CupertinoIcons.folder_badge_plus), label: ""),
            NavigationDestination(icon: Icon(CupertinoIcons.add), label: ""),
            NavigationDestination(
                icon: Icon(CupertinoIcons.chat_bubble), label: ""),
            NavigationDestination(icon: Icon(CupertinoIcons.person), label: ""),
          ],
        ));
  }
}

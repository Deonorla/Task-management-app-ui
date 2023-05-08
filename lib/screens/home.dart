import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:task_management/constants/constants.dart';
import 'package:task_management/screens/widgets/calenderComponent.dart';
import 'package:task_management/screens/widgets/taskCard.dart';
import 'package:task_management/screens/widgets/ui_contants.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final appbar = Uiconstants.appbar();
    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: "Manage \nyour tasks",
                    style: TextStyle(fontSize: 50)),
                WidgetSpan(
                  child: Image.asset(
                    "assets/icons/pencil.png",
                    width: 70,
                    height: 40,
                    alignment: Alignment.bottomLeft,
                  ),
                )
              ])),
            ), // container manage your tasks
            const CalenderComponent(),
            const TaskCard(),
            const TaskCard(),
            const TaskCard(),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: Styles.primaryBackground),
        child: BottomNavigationBar(
            showSelectedLabels: false,
            unselectedItemColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.home,
                    size: 30,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.folder_badge_plus,
                    size: 30,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.add,
                    size: 30,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.chat_bubble,
                    size: 30,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.person,
                    size: 30,
                  ),
                  label: ""),
            ]),
      ),
    );
  }
}

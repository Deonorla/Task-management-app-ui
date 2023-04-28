import 'package:flutter/material.dart';
import 'package:task_management/screens/widgets/calenderComponent.dart';
import 'package:task_management/screens/widgets/ui_contants.dart';
import 'package:task_management/utils/calender_info.dart';

import 'widgets/calenderWidget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
            const CalenderComponent()
          ],
        ),
      ),
    );
  }
}

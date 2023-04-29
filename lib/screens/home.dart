import 'package:flutter/material.dart';
import 'package:task_management/screens/widgets/calenderComponent.dart';
import 'package:task_management/screens/widgets/ui_contants.dart';

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
            const CalenderComponent(),
            Container(
              height: size.height / 4,
              margin: EdgeInsets.symmetric(horizontal: size.width / 18),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 169, 210, 243),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        child: Container(
                          width: size.width / 5,
                          height: size.height / 25,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "High",
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                      ),
                      ClipRRect(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.share,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: "April Dribble Shots Design plan for the month\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 25)),
                    WidgetSpan(
                        child: SizedBox(
                      height: 35,
                    )),
                    WidgetSpan(
                        child: Icon(
                      Icons.calendar_month,
                      color: Colors.black,
                      size: 20,
                    )),
                    WidgetSpan(
                        child: SizedBox(
                      width: 10,
                    )),
                    TextSpan(
                        text: "16 Apr",
                        style: TextStyle(
                            color: Color.fromARGB(255, 47, 46, 46),
                            fontSize: 15))
                  ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

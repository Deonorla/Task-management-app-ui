import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({
    super.key,
  });
  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool clicked = false;

  void handleClick() {
    setState(() {
      clicked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: handleClick,
      child: Container(
        height: size.height / 4,
        margin: EdgeInsets.symmetric(
            horizontal: size.width / 24, vertical: size.height / 50),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: clicked
              ? const Color.fromARGB(255, 169, 210, 243)
              : const Color.fromARGB(255, 59, 57, 57),
          borderRadius: const BorderRadius.only(
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
                        borderRadius: BorderRadius.all(Radius.circular(20))),
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
                text: TextSpan(children: [
              TextSpan(
                  text: "April Dribble Shots Design plan for the month\n",
                  style: TextStyle(
                      color: clicked
                          ? const Color.fromARGB(255, 47, 46, 46)
                          : Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25)),
              const WidgetSpan(
                  child: SizedBox(
                height: 35,
              )),
              WidgetSpan(
                  child: Icon(
                Icons.calendar_month,
                color: clicked
                    ? const Color.fromARGB(255, 47, 46, 46)
                    : Colors.white,
                size: 20,
              )),
              const WidgetSpan(
                  child: SizedBox(
                width: 10,
              )),
              TextSpan(
                  text: "16 Apr",
                  style: TextStyle(
                      color: clicked
                          ? const Color.fromARGB(255, 47, 46, 46)
                          : Colors.white,
                      fontSize: 15))
            ])),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/avatar.png",
                  scale: 1.5,
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.chat_bubble_text,
                      color: clicked
                          ? const Color.fromARGB(255, 47, 46, 46)
                          : Colors.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "6",
                      style: TextStyle(
                        color: clicked
                            ? const Color.fromARGB(255, 47, 46, 46)
                            : Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Icon(
                      CupertinoIcons.pin,
                      color: clicked
                          ? const Color.fromARGB(255, 47, 46, 46)
                          : Colors.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("16",
                        style: TextStyle(
                          color: clicked
                              ? const Color.fromARGB(255, 47, 46, 46)
                              : Colors.white,
                        )),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

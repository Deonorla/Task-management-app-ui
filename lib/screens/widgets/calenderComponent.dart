import 'package:flutter/material.dart';
import 'package:task_management/screens/widgets/calenderWidget.dart';
import 'package:task_management/utils/calender_info.dart';

class CalenderComponent extends StatefulWidget {
  const CalenderComponent({
    super.key,
  });

  @override
  State<CalenderComponent> createState() => _CalenderComponentState();
}

class _CalenderComponentState extends State<CalenderComponent> {
  final List<bool> isSelected = <bool>[
    true,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 12,
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Expanded(
            child: ListView(
          scrollDirection: Axis.horizontal,
          primary: false,
          shrinkWrap: true,
          children: [
            ToggleButtons(
                isSelected: isSelected,
                renderBorder: false,
                borderRadius: BorderRadius.circular(12),
                fillColor: Colors.white,
                selectedColor: const Color.fromARGB(255, 109, 129, 141),
                onPressed: (int index) {
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < isSelected.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        isSelected[buttonIndex] = !isSelected[buttonIndex];
                      } else {
                        isSelected[buttonIndex] = false;
                      }
                    }
                  });
                },
                children: calenderList
                    .map((list) => CalenderWidget(
                          calender: list,
                        ))
                    .toList()),
          ],
        ))
      ]),
    );
  }
}

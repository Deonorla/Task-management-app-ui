import 'package:flutter/cupertino.dart';
import 'package:task_management/screens/widgets/calenderComponent.dart';
import 'package:task_management/screens/widgets/taskCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: RichText(
                text: TextSpan(children: [
              const TextSpan(
                  text: "Manage \nyour tasks", style: TextStyle(fontSize: 50)),
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
    );
  }
}

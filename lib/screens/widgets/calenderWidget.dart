import 'package:flutter/material.dart';

class CalenderWidget extends StatefulWidget {
  final Map<dynamic, dynamic> calender;
  const CalenderWidget({
    super.key,
    required this.calender,
  });

  @override
  State<CalenderWidget> createState() => _CalenderState();
}

class _CalenderState extends State<CalenderWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 50,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(
              widget.calender['day'],
              style: const TextStyle(
                  color: Color.fromARGB(255, 109, 129, 141), fontSize: 17),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(widget.calender['date'],
                style: const TextStyle(
                    color: Color.fromARGB(255, 105, 118, 126), fontSize: 20))
          ],
        ),
      ),
    );
  }
}

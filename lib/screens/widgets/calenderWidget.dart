import 'package:flutter/material.dart';

class CalenderWidget extends StatelessWidget {
  final String day, date;
  const CalenderWidget({
    super.key,
    required this.day,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            day,
            style: const TextStyle(
                color: Color.fromARGB(255, 109, 129, 141), fontSize: 17),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(date, style: const TextStyle(color: Colors.white, fontSize: 20))
        ],
      ),
    );
  }
}

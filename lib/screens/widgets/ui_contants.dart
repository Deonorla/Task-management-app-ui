import 'package:flutter/material.dart';

class Uiconstants {
  static AppBar appbar() {
    return AppBar(
      leading: const InkWell(child: Icon(Icons.menu)),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Image.asset(
            'assets/images/avatar.png',
            width: 50,
            height: 50,
          ),
        ),
      ],
    );
  }
}

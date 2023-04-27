import 'package:flutter/material.dart';
import 'package:task_management/screens/widgets/ui_contants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final appbar = Uiconstants.appbar();
    return Scaffold(
      appBar: appbar,
    );
  }
}

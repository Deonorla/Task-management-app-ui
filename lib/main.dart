import 'package:flutter/material.dart';
import 'package:task_management/constants/constants.dart';
import 'package:task_management/screens/home.dart';
import 'package:task_management/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task management',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

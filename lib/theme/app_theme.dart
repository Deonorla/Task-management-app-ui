import 'package:flutter/material.dart';
import 'package:task_management/constants/constants.dart';

class AppTheme {
  static ThemeData theme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Styles.primaryBackground,
      appBarTheme:
          AppBarTheme(backgroundColor: Styles.primaryBackground, elevation: 0));
}

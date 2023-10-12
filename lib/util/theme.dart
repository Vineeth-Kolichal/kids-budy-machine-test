import 'package:flutter/material.dart';

import 'export_util.dart';

ThemeData theme = ThemeData(
  scaffoldBackgroundColor: bgColor,
  tabBarTheme: TabBarTheme(
    labelColor: pinkColor,
    indicatorColor: pinkColor,
    dividerColor: Colors.transparent,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: bgColor,
    titleTextStyle: TextStyle(
      color: pinkColor,
      fontWeight: FontWeight.w600,
      fontSize: 17,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      backgroundColor: pinkColor,
    ),
  ),
  useMaterial3: true,
);

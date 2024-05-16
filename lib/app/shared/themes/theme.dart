import 'package:flutter/material.dart';
import 'package:tracky/app/shared/themes/color.dart';
import 'package:tracky/app/shared/themes/font.dart';

ThemeData themeData = ThemeData(
  fontFamily: 'Poppins',
  scaffoldBackgroundColor: Colors.white,
  primarySwatch: Colors.blue,
  appBarTheme: const AppBarTheme(
    surfaceTintColor: Colors.transparent,
  ),
  cardTheme: const CardTheme(
    surfaceTintColor: Colors.white,
  ),
);

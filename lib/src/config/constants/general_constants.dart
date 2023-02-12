import 'package:base_project/src/features/home/domain/models/enums/tabbar_enum.dart';
import 'package:flutter/material.dart';

class GeneralConstants {
  static Size defaultDesignSize = const Size(360, 690);
  static double defaultBorderRadius = 10;
  static bool didStartSetup = false;
  static TabbarEnum tabbarPos = TabbarEnum.all;
  static bool isLoggedIn = false;
  static bool isSearchMode = false;
  static DateTime? currentBackPressTime;
  static Color? colorSchemeSeedLight = Colors.lightBlueAccent[600];
  static Color? colorSchemeSeedDark = const Color.fromARGB(255, 58, 80, 155);
  static String jwt = '';
}

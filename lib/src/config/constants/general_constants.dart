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
  static Offset offset = const Offset(0, 0);
  static double zoomValue = 1;
  static Map<String, dynamic> fakeJson = {
    'projectName': 'Frequency Detail',
    'arthors': [
      'hamid jalili',
      'mohsen pir fakhrabadi',
      'shirin mesri',
      'ehsan akbari',
      'majid latifi',
    ],
    'schedules': {
      'unreal': {
        'title': 'Frequency unreal',
        'children': {},
      },
      'hamid': {
        'parent_name': '',
        'index': 0,
        'length': 2,
        'title': 'Frequency hamid',
        'arthor': 'hamid jalili',
        'priority': 0,
        'children': {
          'siri': {
            'parent_name': 'hamid',
            'index': 1,
            'length': 0,
            'title': 'Frequency UI',
            'arthor': 'mohsen pir fakhrabadi',
            'priority': 0,
            'children': {},
          },
          'cortana': {
            'parent_name': 'hamid',
            'index': 1,
            'length': 2,
            'title': 'Frequency Graph',
            'arthor': 'shirin mesri',
            'priority': 0,
            'children': {
              'iq': {
                'parent_name': 'cortana',
                'index': 2,
                'length': 0,
                'title': 'Frequency Nodes',
                'arthor': 'ehsan akbari',
                'priority': 1,
                'children': {},
              },
              'eq': {
                'parent_name': 'cortana',
                'index': 2,
                'length': 0,
                'title': 'Frequency IT',
                'arthor': 'majid latifi',
                'priority': 2,
                'children': {},
              },
            },
          },
        }
      },
    },
  };
}

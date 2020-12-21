import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppEssentials {
  static const String appName = "DevFest";
  static const String appVersion = "Version 1.0.0";
  static const int appVersionCode = 1;
  static const String appColor = "#FFD7167";
  static const Color primaryColor = Colors.white;
  static const Color secondaryColor = Colors.black;
  static SharedPreferences preferences;
}

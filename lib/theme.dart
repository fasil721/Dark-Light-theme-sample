import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppColor {
  static Color textColor = const Color(0xff9C9C9D);
  static Color textColorDark = const Color(0xffffffff);

  static Color bodyColor = const Color(0xffffffff);
  static Color bodyColorDark = const Color(0xff0E0E0F);

  static Color buttonBackgroundColor = const Color(0xffF7F7F7);
  static Color buttonBackgroundColorDark = const Color(0xff121212);
}

class AppTheme {
  static ThemeData light = lightTheme;
  static ThemeData dark = darkTheme;
}

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  backgroundColor: AppColor.bodyColorDark,
  scaffoldBackgroundColor: AppColor.bodyColorDark,
  hintColor: AppColor.textColor,
  primaryColorLight: AppColor.buttonBackgroundColorDark,
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: Colors.white,
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    buttonColor: Colors.white,
  ),
);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: AppColor.bodyColor,
  scaffoldBackgroundColor: AppColor.bodyColor,
  hintColor: AppColor.textColor,
  primaryColorLight: AppColor.buttonBackgroundColor,
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: Colors.black,
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    buttonColor: Colors.black,
  ),
);

// class ThemeModel extends ChangeNotifier {
//   bool? _isDark;
//   ThemePreferences? _preferences;
//   bool get isDark => _isDark!;

//   ThemeModel() {
//     _isDark = false;
//     _preferences = ThemePreferences();
//     getPreferences();
//   }

//   set isDark(bool value) {
//     _isDark = value;
//     _preferences!.setTheme(value);
//     notifyListeners();
//   }

//   getPreferences() async {
//     _isDark = await _preferences!.getTheme();
//     notifyListeners();
//   }
// }

// class ThemePreferences {
//   static const prefKey = "pref_key";

//   setTheme(bool value) async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     sharedPreferences.setBool(prefKey, value);
//   }

//   getTheme() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     return sharedPreferences.getBool(prefKey) ?? false;
//   }
// }

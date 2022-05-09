// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
//
// class ThemeProvider extends ChangeNotifier {
//   ThemeMode themeMode = ThemeMode.system;
//
//   bool get isDarkMode {
//     if (themeMode == ThemeMode.system) {
//       final brightness = SchedulerBinding.instance.window.platformBrightness;
//       return brightness == Brightness.dark;
//     } else {
//       return themeMode == ThemeMode.dark;
//     }
//   }
//
//   void toggleTheme(bool isOn) {
//     themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
//     notifyListeners();
//   }
// }
//
// class MyThemes {
//   static final darkTheme = ThemeData(
//     scaffoldBackgroundColor: Colors.grey.shade900,
//     primaryColor: Colors.black,
//     colorScheme: ColorScheme.dark(),
//     iconTheme: IconThemeData(color: Colors.white, opacity: 0.8),
//   );
//
//   static final lightTheme = ThemeData(
//     scaffoldBackgroundColor: Colors.white,
//     primaryColor: Colors.white,
//     colorScheme: ColorScheme.light(),
//     iconTheme: IconThemeData(color: Colors.purple, opacity: 0.8),
//   );
// }
import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePreference {
  static const THEME_STATUS = "THEMESTATUS";

  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEME_STATUS, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(THEME_STATUS) ?? false;
  }
}
import 'package:flutter/material.dart';

class provider extends ChangeNotifier
{
  String appLocale = "ar";
  ThemeMode appThemeMode = ThemeMode.dark;

  changeappLocale (String currentLocale)
  {
     appLocale =  currentLocale;
     notifyListeners();
  }

  changeappTheme (ThemeMode currentMode )
  {
    appThemeMode = currentMode;
    notifyListeners();
  }

}
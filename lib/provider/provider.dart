import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class provider extends ChangeNotifier
{
  String appLocale = "en";
  ThemeMode appThemeMode = ThemeMode.light;
  SharedPreferences ? prefs;

  Future<void> initSharedPrefrence ()
  async {
    prefs = await SharedPreferences.getInstance();
  }

  void getAppDetails()
  {
    String language = Shared.prefs?.getString("language") ?? "en";
    appLocale = language;
    String theme = Shared.prefs?.getString("theme") ?? "$appThemeMode";
    if(theme =='$appThemeMode'){
      appThemeMode=ThemeMode.light;
    }
    else{
      appThemeMode =ThemeMode.dark;
    }
  }

  changeappLocale (String currentLocale)
  {
     appLocale =  currentLocale;
     Shared.prefs?.setString("language","$currentLocale");
     notifyListeners();
  }

  changeappTheme (ThemeMode currentMode )
  {
    appThemeMode = currentMode;
    Shared.prefs?.setString ("theme","$currentMode");
    notifyListeners();
  }

}

class Shared {
  static SharedPreferences? prefs;
  }

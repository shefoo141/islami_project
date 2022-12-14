import 'package:flutter/material.dart';

class myThemes {

static Color lightprimarycolor =Color(0xffB7935F);
static Color lightaccentcolor =Color(0xff242424);

static Color darkprimarycolor =Color(0xff141A2E);
static Color darkaccentcolor =Color(0xffFACC1D);

static ThemeData lightTheme = ThemeData(
  primaryColor: lightprimarycolor,
  accentColor: lightaccentcolor,
   appBarTheme: AppBarTheme(
     elevation: 0,
     centerTitle: true,
     backgroundColor: Colors.transparent,
     titleTextStyle:TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: myThemes.lightaccentcolor),
   ),
  scaffoldBackgroundColor: Colors.transparent,
);

static ThemeData darkTheme = ThemeData(
  primaryColor: darkprimarycolor,
  accentColor: darkaccentcolor,
  appBarTheme: AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    titleTextStyle:TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: myThemes.darkaccentcolor),
  ),
  scaffoldBackgroundColor: Colors.transparent,
);

}
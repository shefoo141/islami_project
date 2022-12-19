import 'package:flutter/material.dart';

class myThemes {

static Color lightprimarycolor =const Color(0xffB7935F);
static Color lightaccentcolor =const Color(0xff242424);

static Color darkprimarycolor =const Color(0xff141A2E);
static Color darkaccentcolor =const Color(0xffFACC1D);

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
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: lightprimarycolor,
    showUnselectedLabels: true,
    selectedItemColor: myThemes.lightaccentcolor,
    unselectedItemColor: Colors.white,
  ),
  textTheme: TextTheme(
    headline5: TextStyle(fontSize:25 , fontWeight: FontWeight.bold , color: myThemes.lightaccentcolor),
    headline4: TextStyle(fontSize:20, fontWeight: FontWeight.bold, color: myThemes.lightaccentcolor),
    bodyText1: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: myThemes.lightaccentcolor),
    bodyText2: TextStyle(fontWeight: FontWeight.bold,fontSize: 22, color: myThemes.lightaccentcolor),
    subtitle1: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: myThemes.lightaccentcolor),
    subtitle2: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: myThemes.lightprimarycolor),
  ),
);

static ThemeData darkTheme = ThemeData(
  primaryColor: darkprimarycolor,
  accentColor: darkaccentcolor,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    titleTextStyle:const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
  ),
  scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: true,
      selectedItemColor: myThemes.darkaccentcolor,
      unselectedItemColor: Colors.white,
    ),
textTheme: TextTheme(
 headline5: TextStyle(fontSize:25 , fontWeight: FontWeight.bold , color: myThemes.darkaccentcolor ),
 headline4:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
 bodyText1: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color:Colors.white),
 bodyText2 : TextStyle(fontWeight: FontWeight.bold,fontSize: 22, color: Colors.white),
 subtitle1: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
 subtitle2: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: myThemes.darkaccentcolor)
)
);


}
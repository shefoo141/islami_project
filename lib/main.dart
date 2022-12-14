import 'package:flutter/material.dart';
import 'package:islami_project/screens/homeScreen.dart';
import 'package:islami_project/screens/tabs/hadethTab/hadethScreen.dart';
import 'package:islami_project/screens/tabs/quranTab/quranScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('ar', ''),
          ],// Spanish, no country code
      routes: {
        'Home' : (context) =>homeScreen(),
        'Quran' : (context) =>quranScreen(),
        'Hadeth': (context) =>hadethScreen(),
      },
      initialRoute: 'Home',
    );
  }
}


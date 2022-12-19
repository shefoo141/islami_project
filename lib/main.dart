import 'package:flutter/material.dart';
import 'package:islami_project/provider/provider.dart';
import 'package:islami_project/screens/homeScreen.dart';
import 'package:islami_project/screens/myThemes.dart';
import 'package:islami_project/screens/tabs/hadethTab/hadethScreen.dart';
import 'package:islami_project/screens/tabs/quranTab/quranScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => provider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
 late provider providerSettings;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    providerSettings = Provider.of(context);
    return MaterialApp(
      theme: myThemes.lightTheme,
      darkTheme:myThemes.darkTheme ,
        themeMode: providerSettings.appThemeMode,

        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
        Locale('en', ''),
        Locale('ar', ''),
          ],
      locale:Locale(providerSettings.appLocale),

      routes: {
        'Home' : (context) =>homeScreen(),
        'Quran' : (context) =>quranScreen(),
        'Hadeth': (context) =>hadethScreen(),
      },
      initialRoute: 'Home',
    );
  }
}


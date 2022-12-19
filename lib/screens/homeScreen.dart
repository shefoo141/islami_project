import 'package:flutter/material.dart';
import 'package:islami_project/provider/provider.dart';
import 'package:islami_project/screens/myThemes.dart';
import 'package:islami_project/screens/tabs/hadethTab/hadethTab.dart';
import 'package:islami_project/screens/tabs/quranTab/quranTab.dart';
import 'package:islami_project/screens/tabs/radioTab/radiotab.dart';
import 'package:islami_project/screens/tabs/sebhaTab/sebhaTab.dart';
import 'package:islami_project/screens/tabs/settingsTab/settingScreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class homeScreen extends StatefulWidget {
  static String routename = 'Home';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [quranTab(), hadethTab(), sebhaTab(),radioTab(), settingScreen()];
  late provider providerSettings;
  @override
  Widget build(BuildContext context) {
    providerSettings = Provider.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(providerSettings.appThemeMode==ThemeMode.light ?
            'assets/images/default_bg.png':'assets/images/dark_bg.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title:Text( AppLocalizations.of(context)!.islami),
        ),
        bottomNavigationBar: Theme(
          data: providerSettings.appThemeMode== ThemeMode.light ?Theme.of(context)
              .copyWith(canvasColor: myThemes.lightprimarycolor) : Theme.of(context)
              .copyWith(canvasColor: myThemes.darkprimarycolor),
          child: BottomNavigationBar(
            onTap: (Clickedtab) {
              selectedIndex = Clickedtab;
              setState(() {});
            },
            currentIndex: selectedIndex,
            items: const[
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label: 'Quran'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                  label: 'Hadeth'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                  label: 'Sebha'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                  label: 'Radio'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings'),
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}

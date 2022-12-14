import 'package:flutter/material.dart';
import 'package:islami_project/screens/myThemes.dart';
import 'package:islami_project/screens/tabs/hadethTab/hadethTab.dart';
import 'package:islami_project/screens/tabs/quranTab/quranTab.dart';
import 'package:islami_project/screens/tabs/radioTab/radiotab.dart';
import 'package:islami_project/screens/tabs/sebhaTab/sebhaTab.dart';

class homeScreen extends StatefulWidget {
  static String routename = 'Home';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [quranTab(), hadethTab(), sebhaTab(),radioTab(),];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/default_bg.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('Islami'),
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: myThemes.lightaccentcolor),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: myThemes.lightprimarycolor),
          child: BottomNavigationBar(
            selectedItemColor: myThemes.lightaccentcolor,
            showUnselectedLabels: true,
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
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}

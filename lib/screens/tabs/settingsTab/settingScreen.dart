import 'package:islami_project/screens/tabs/settingsTab/themeSheet.dart';
import 'package:flutter/material.dart';
import 'package:islami_project/provider/provider.dart';
import 'package:islami_project/screens/myThemes.dart';
import 'package:islami_project/screens/tabs/settingsTab/localBottomSheet.dart';
import 'package:provider/provider.dart';

class settingScreen extends StatefulWidget {
  static String routname ='setting';

  @override
  State<settingScreen> createState() => _settingScreenState();
}

class _settingScreenState extends State<settingScreen> {


  @override
  Widget build(BuildContext context) {
    provider providerSettings = Provider.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Language', style: Theme.of(context).textTheme.subtitle1),
        InkWell(
          onTap: () {
            showBottomSheetSettings1();
          },
          child: Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(7),
            child: Row(
              children: [
                Text(providerSettings.appLocale == "en"?"English" : "العربيه ", style:Theme.of(context).textTheme.subtitle2),
                Spacer(),
                Icon(Icons.arrow_downward),
              ],
            ),
          ),
        ),
        Text('Theme', style: Theme.of(context).textTheme.subtitle1),
        InkWell(
          onTap: () {
            showBottomSheetSettings2();
          },
          child: Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(7),
            child: Row(
              children: [
                Text(providerSettings.appThemeMode == ThemeMode.light ? "Light" : "Dark", style: Theme.of(context).textTheme.subtitle2),
                Spacer(),
                Icon(Icons.arrow_downward),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void showBottomSheetSettings1() {
    showBottomSheet(context: context, builder: (context) {
      return localeBottomSheet();
    }
    );
  }
  void showBottomSheetSettings2() {
    showBottomSheet(context: context, builder: (context) {
      return themeSheet2();
    }
    );
  }

}

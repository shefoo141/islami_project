import 'package:flutter/material.dart';
import 'package:islami_project/provider/provider.dart';
import 'package:islami_project/screens/myThemes.dart';
import 'package:provider/provider.dart';

class themeSheet2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    provider providerSettings = Provider.of(context);
    return Column(
      children: [
        InkWell(
          onTap: ()
          {
            providerSettings.changeappTheme(ThemeMode.light);
          },
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(7),
            child: Text('Light', style: TextStyle(fontSize: 12
                , fontWeight: FontWeight.bold, color: myThemes.lightaccentcolor),),
          ),
        ),
        SizedBox(height: 10,),
        InkWell(
          onTap: () {
            providerSettings.changeappTheme(ThemeMode.dark);
          },
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(7),
            child: Text('Dark', style: TextStyle(fontSize: 12
                , fontWeight: FontWeight.bold, color: myThemes.lightaccentcolor),),
          ),
        ),

      ],
    );
  }
}
